import 'package:checkout/src/cart/state/cart_state.dart';
import 'package:core/core.dart';
import 'package:navigation/navigation.dart';
import 'package:network/network.dart';

class CartViewModel extends StateManager<CartState> {
  CartViewModel(this.firebaseRepo, this.globalListener) : super(const CartState());

  AccountDetails? accountDetails;

  final FirebaseManager firebaseRepo;
  final GlobalListener globalListener;

  void initCartValues(num cartValue) {
    state = state.copyWith(cartValue: cartValue as int);
  }

  int get noOfItemsInCart => state.cartList.length;

  num get priceInCart {
    num price = 0;
    List.generate(state.cartList.length, (index) {
      price = price + (state.cartList[index].currentPrice * state.cartList[index].numOfItems);
    });
    return price;
  }

  String get currency => noOfItemsInCart > 0 ? state.cartList[0].currency : "";

  set cartItems(List<CartModel> value) {
    state = state.copyWith(cartList: value);
  }

  Future<void> placeOrder() async {
    if (state.selectedAddress == null) {
      MessageHandler.showSnackBar(title: StringsConstants.noAddressSelected);
      return;
    }
    state = state.copyWith(orderInProgress: true);
    if (await ConnectionStatus.getInstance().checkConnection()) {
      try {
        await firebaseRepo.placeOrder(_orderFromCartList(state.cartList, state.selectedAddress!));
        await firebaseRepo.emptyCart();
        if (NavigationHandler.canNavigateBack()) {
          NavigationHandler.navigateTo(
            const MyOrdersScreenRoute(),
            navigationType: NavigationType.pushReplacement,
          );
        }
      } catch (e) {
        MessageHandler.showSnackBar(title: e.toString());
      }
    } else {
      MessageHandler.showSnackBar(title: StringsConstants.connectionNotAvailable);
    }
    state = state.copyWith(orderInProgress: false);
  }

  OrderModel _orderFromCartList(List<CartModel> cartModel, Address orderAddress) {
    final cartItems = cartModel;

    List<OrderItem> getOrderItems() {
      return List<OrderItem>.generate(cartItems.length, (index) {
        final CartModel cartModel = cartItems[index];
        return OrderItem(
          name: cartModel.name,
          productId: cartModel.productId,
          currency: cartModel.currency,
          price: cartModel.currentPrice,
          unit: cartModel.unit,
          image: cartModel.image,
          noOfItems: cartModel.numOfItems,
        );
      });
    }

    final OrderModel orderModel = OrderModel(
      orderId: "${cartModel.priceInCart}${DateTime.now().millisecondsSinceEpoch}",
      orderItems: getOrderItems(),
      paymentId: 'response.paymentId!',
      signature: 'response.signature!',
      price: cartModel.priceInCart,
      orderAddress: orderAddress,
    );
    return orderModel;
  }

  void selectOrChangeAddress() {
    if (accountDetails == null) return;
    if (state.selectedAddress == null) {
      NavigationHandler.navigateTo(AddAddressScreenRoute(
        newAddress: true,
        accountDetails: accountDetails!,
      ));
    } else {
      NavigationHandler.navigateTo(
        MyAddressScreenRoute(
          selectedAddress: true,
        ),
      ).then((value) {
        if (value != null && value.runtimeType is Address) {
          state = state.copyWith(selectedAddress: value);
        }
      });
    }
  }

  void addAccountDetails(AccountDetails? accountDetails) {
    if (accountDetails != null) {
      Address? address;
      List.generate(accountDetails.addresses.length, (int index) {
        final Address add = accountDetails.addresses[index];
        if (add.isDefault) {
          address = add;
        }
      });

      if (address == null && accountDetails.addresses.isNotEmpty) {
        address = accountDetails.addresses[0];
      }

      if (accountDetails.addresses.isNotEmpty) {
        if (state.selectedAddress == null) {
          state = state.copyWith(selectedAddress: address);
        }
      }
    }
  }

  Future<void> updateCartValues(int index, bool shouldIncrease) async {
    final cart = state.cartList[index];

    final int newCartValue = shouldIncrease ? cart.numOfItems + 1 : cart.numOfItems - 1;

    state = state.copyWith(cartItemDataLoading: CartDataLoading(index: index, isLoading: true));

    if (newCartValue > 0) {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        MessageHandler.showSnackBar(title: StringsConstants.connectionNotAvailable);
        return;
      }

      cart.numOfItems = newCartValue;

      state.cartList[index] = cart;

      firebaseRepo.addProductToCart(cart).then((value) {
        state = state.copyWith(cartList: state.cartList);
      }).catchError((e) {
        MessageHandler.showSnackBar(title: e.toString());
      });
    } else {
      deleteItem(index, deleteExternally: false);
    }
    state = state.copyWith(cartItemDataLoading: CartDataLoading(index: index, isLoading: false));
  }

  Future<void> deleteItem(int index, {bool deleteExternally = true}) async {
    final CartModel cartModel = state.cartList[index];
    if (deleteExternally) {
      state = state.copyWith(cartItemDataLoading: CartDataLoading(index: index, deleteLoading: true));
    }
    if (!(await ConnectionStatus.getInstance().checkConnection())) {
      MessageHandler.showSnackBar(title: StringsConstants.connectionNotAvailable);
      return;
    }
    firebaseRepo.delProductFromCart(cartModel.productId).then((value) {
      state.cartList.removeAt(index);
      state = state.copyWith(cartList: state.cartList);
    }).catchError((e) {
      MessageHandler.showSnackBar(title: e.toString());
    });
    state = state.copyWith(cartItemDataLoading: CartDataLoading(index: index, deleteLoading: false));
  }

  void init() {
    globalListener.listen<List<CartModel>>(GlobalListenerConstants.cartList, (value) {
      state = state.copyWith(cartList: value);
    });
    globalListener.listen<AccountDetails>(GlobalListenerConstants.accountDetails, (value) {
      addAccountDetails(value);
    });
  }
}

extension CartStatus on List<CartModel> {
  int get noOfItemsInCart => length;

  num get priceInCart {
    num price = 0;
    List.generate(length, (index) {
      price = price + (this[index].currentPrice * this[index].numOfItems);
    });
    return price;
  }

  String get currency => noOfItemsInCart > 0 ? this[0].currency : "";
}

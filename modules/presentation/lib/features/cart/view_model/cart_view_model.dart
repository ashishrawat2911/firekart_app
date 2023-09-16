/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:localization/localization.dart';
import 'package:core/logger/app_logger.dart';
import 'package:core/message_handler/message_handler.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:domain/models/account_details_model.dart';
import 'package:domain/models/add_order_model.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/usecases/delete_product_from_cart_usecase.dart';
import 'package:domain/usecases/get_address_usecase.dart';
import 'package:domain/usecases/get_cart_status_use_case.dart';
import 'package:domain/usecases/place_order_usecase.dart';
import 'package:domain/usecases/update_cart_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../../routes/app_router.gr.dart';
import '../../../routes/route_handler.dart';
import '../state/cart_state.dart';

@injectable
class CartViewModel extends ViewModel<CartState> {
  CartViewModel(
    this._productDeleteCartUseCase,
    this._placeOrderUseCase,
    this._getCartStatusUseCase,
    this._cartCartUseCase,
    this._getAddressUseCase,
  ) : super(const CartState());

  final ProductDeleteCartUseCase _productDeleteCartUseCase;
  final PlaceOrderUseCase _placeOrderUseCase;
  final GetAddressUseCase _getAddressUseCase;
  final GetCartStatusUseCase _getCartStatusUseCase;
  final UpdateCartUseCase _cartCartUseCase;

  void initCartValues(num cartValue) {
    state = state.copyWith(cartValue: cartValue as int);
  }

  int get noOfItemsInCart => state.cartList.length;

  num get priceInCart {
    num price = 0;
    List.generate(state.cartList.length, (index) {
      price = price +
          (state.cartList[index].currentPrice *
              state.cartList[index].numOfItems);
    });
    return price;
  }

  String get currency => noOfItemsInCart > 0 ? state.cartList[0].currency : '';

  // set cartItems(List<Cart> value) {
  //   state = state.copyWith(cartList: value);
  // }

  Future<void> placeOrder() async {
    if (state.selectedAddress == null) {
      MessageHandler.showSnackBar(title: Localization.value.noAddressSelected);
      return;
    }
    state = state.copyWith(orderInProgress: true);
    final res = await _placeOrderUseCase.execute(
      _orderFromCartList(state.cartList, state.selectedAddress!),
    );
    await res.fold((l) {
      MessageHandler.showSnackBar(title: l.errorMessage);
    }, (r) async {
      if (RouteHandler.canNavigateBack()) {
        await RouteHandler.routeTo(
          const MyOrdersRoute(),
        );
      }
      await init();
    });

    state = state.copyWith(orderInProgress: false);
  }

  AddOrder _orderFromCartList(List<Cart> cartModel, Address orderAddress) {
    final cartItems = cartModel;

    List<AddOrderItem> getOrderItems() =>
        List<AddOrderItem>.generate(cartItems.length, (index) {
          final cartModel = cartItems[index];

          return AddOrderItem(
            productId: cartModel.productId,
            price: cartModel.currentPrice,
            noOfItems: cartModel.numOfItems,
          );
        });

    final orderModel = AddOrder(
      orderItems: getOrderItems(),
      paymentId: 'response.paymentId!',
      signature: 'response.signature!',
      price: cartModel.priceInCart,
      orderedAt: DateTime.now().toString(),
      orderStatus: 'Ordered',
    );
    return orderModel;
  }

  void selectOrChangeAddress() {
    if (state.selectedAddress == null) {
      RouteHandler.routeTo(
        AddAddressRoute(
          newAddress: true,
        ),
      ).then((value) {
        if (value != null && value.runtimeType is bool) {
          fetchAddress();
        }
      });
    } else {
      RouteHandler.routeTo(
        MyAddressRoute(
          selectedAddress: true,
        ),
      ).then((value) {
        AppLogger.log(value);
        if (value != null && value.runtimeType == Address) {
          state = state.copyWith(selectedAddress: value);
        }
      });
    }
  }

  void addAccountDetails(List<Address> addresses) {
    Address? address;
    List.generate(addresses.length, (int index) {
      final add = addresses[index];
      if (add.isDefault) {
        address = add;
      }
    });

    if (address == null && addresses.isNotEmpty) {
      address = addresses[0];
    }

    if (addresses.isNotEmpty) {
      if (state.selectedAddress == null) {
        state = state.copyWith(selectedAddress: address);
      }
    }
  }

  Future<void> updateCartValues(int index, bool shouldIncrease) async {
    final cart = state.cartList[index];

    final newCartValue =
        shouldIncrease ? cart.numOfItems + 1 : cart.numOfItems - 1;

    state = state.copyWith(
      cartItemDataLoading: CartDataLoading(index: index, isLoading: true),
    );

    if (newCartValue > 0) {
      await _cartCartUseCase
          .execute(cart.productId, newCartValue)
          .then((value) {
        value.fold((e) {
          MessageHandler.showSnackBar(title: e.errorMessage);
        }, (r) {
          cart.numOfItems = newCartValue;
          List<Cart> updatedCartList = List.from(state.cartList);
          updatedCartList[index] = cart;
          state = state.copyWith(cartList: updatedCartList);
        });
      });
    } else {
      await deleteItem(index);
    }

    state = state.copyWith(
      cartItemDataLoading: CartDataLoading(index: index),
    );
  }

  Future<void> deleteItem(int index) async {
    await _productDeleteCartUseCase
        .execute(state.cartList[index].productId)
        .then((value) {
      value.fold((e) {
        MessageHandler.showSnackBar(title: e.errorMessage);
      }, (r) {
        List<Cart> updatedCartList = List.from(state.cartList);
        updatedCartList.removeAt(index);
        state = state.copyWith(cartList: updatedCartList);
      });
    });
  }

  Future<void> init() async {
    // final res = await _getCartStatusUseCase.execute();
    // res.forEach((r) {});
    _getCartStatusUseCase.watch().listen((carts) {
      state = state.copyWith(cartList: carts);
    });
    await fetchAddress();
  }

  Future<void> fetchAddress() async {
    await _getAddressUseCase.execute().then(
      (value) {
        value.forEach(addAccountDetails);
      },
    );
  }
}

extension CartStatus on List<Cart> {
  int get noOfItemsInCart => length;

  num get priceInCart {
    num price = 0;
    List.generate(length, (index) {
      price = price + (this[index].currentPrice * this[index].numOfItems);
    });
    return price;
  }

  String get currency => noOfItemsInCart > 0 ? this[0].currency : '';
}

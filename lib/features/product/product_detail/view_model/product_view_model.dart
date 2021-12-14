import 'package:fluttercommerce/core/message_handler/message_handler.dart';
import 'package:fluttercommerce/core/state_manager/state_manager.dart';
import 'package:fluttercommerce/core/utils/connectivity.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/cart/state/add_to_cart_state.dart';
import 'package:fluttercommerce/features/common/models/cart_model.dart';
import 'package:fluttercommerce/features/common/models/product_model.dart';

class ProductViewModel extends StateManager<AddToCartState> {
  ProductViewModel(this._firebaseRepo) : super(const AddToCartState());

  final FirebaseManager _firebaseRepo;

  Future<void> listenToProduct(String productId) async {
    _firebaseRepo.cartStatusListen(_firebaseRepo.getUid()).listen((event) {
      checkItemInCart(productId, isListening: true);
    });
  }

  Future<void> checkItemInCart(String productId,
      {bool isListening = false}) async {
    if (!isListening) {
      state = state.copyWith(addToCardLoading: true);
    } else {
      state = state.copyWith(addToCardLoading: false);
    }
    final int cartValue = await _firebaseRepo.checkItemInCart(productId);
    if (cartValue > 0) {
      state = state.copyWith(noOfItems: cartValue);
    } else {
      state = state.copyWith(showAddButton: true);
    }
  }

  Future<void> addToCart(ProductModel productModel) async {
    state = state.copyWith(addToCardLoading: true);

    if (!(await ConnectionStatus.getInstance().checkConnection())) {
      MessageHandler.showSnackBar(
          title: StringsConstants.connectionNotAvailable);
      return;
    }
    CartModel cartModel = CartModel.fromProduct(productModel, 1);
    _firebaseRepo.addProductToCart(cartModel).then((value) {
      state = state.copyWith(noOfItems: 1);
    }).catchError((e) {
      MessageHandler.showSnackBar(title: e.toString());
    }).whenComplete(() {
      state = state.copyWith(addToCardLoading: false);
    });
  }

  Future<void> updateCartValues(
      ProductModel productModel, int cartValue, bool shouldIncrease) async {
    final int newCartValue = shouldIncrease ? cartValue + 1 : cartValue - 1;
    state = state.copyWith(addToCardLoading: true);

    if (newCartValue > 0) {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        MessageHandler.showSnackBar(
            title: StringsConstants.connectionNotAvailable);
        return;
      }
      final CartModel cartModel =
          CartModel.fromProduct(productModel, newCartValue);
      _firebaseRepo.addProductToCart(cartModel).then((value) {
        state = state.copyWith(noOfItems: newCartValue);
      }).catchError((e) {
        MessageHandler.showSnackBar(title: e.toString());
      }).whenComplete(() {
        state = state.copyWith(addToCardLoading: false);
      });
    } else {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        MessageHandler.showSnackBar(
            title: StringsConstants.connectionNotAvailable);
        return;
      }
      _firebaseRepo.delProductFromCart(productModel.productId!).then((value) {
        state = state.copyWith(showAddButton: true);
      }).catchError((e) {
        MessageHandler.showSnackBar(title: e.toString());
      }).whenComplete(() {
        state = state.copyWith(addToCardLoading: false);
      });
    }
  }
}
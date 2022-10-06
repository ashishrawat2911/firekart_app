import 'package:fluttercommerce/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:fluttercommerce/domain/usecases/delete_product_from_cart_usecase.dart';
import 'package:fluttercommerce/domain/usecases/get_cart_status_use_case.dart';
import 'package:fluttercommerce/domain/usecases/get_items_in_cart_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/message_handler/message_handler.dart';
import '../../../../core/res/string_constants.dart';
import '../../../../core/state_manager/state_manager.dart';
import '../../../../core/utils/connectivity.dart';
import '../../../../data/models/cart_model.dart';
import '../../../../data/models/product_model.dart';
import '../state/add_to_cart_state.dart';

@injectable
class ProductViewModel extends StateManager<AddToCartState> {
  ProductViewModel(
    this._getItemsInCartUseCase,
    this._productDeleteCartUseCase,
    this._productAddToCartUseCase,
    this._getCartStatusUseCase,
  ) : super(const AddToCartState());

  final GetItemsInCartUseCase _getItemsInCartUseCase;
  final ProductDeleteCartUseCase _productDeleteCartUseCase;
  final ProductAddToCartUseCase _productAddToCartUseCase;
  final GetCartStatusUseCase _getCartStatusUseCase;

  Future<void> listenToProduct(String productId) async {
    _getCartStatusUseCase.execute().listen((event) {
      checkItemInCart(productId, isListening: true);
    });
  }

  Future<void> checkItemInCart(String productId, {bool isListening = false}) async {
    if (!isListening) {
      state = state.copyWith(addToCardLoading: true);
    } else {
      state = state.copyWith(addToCardLoading: false);
    }
    final int cartValue = await _getItemsInCartUseCase.execute(productId);
    if (cartValue > 0) {
      state = state.copyWith(noOfItems: cartValue);
    } else {
      state = state.copyWith(showAddButton: true);
    }
  }

  Future<void> addToCart(ProductModel productModel) async {
    state = state.copyWith(addToCardLoading: true);

    if (!(await ConnectionStatus.getInstance().checkConnection())) {
      MessageHandler.showSnackBar(title: StringsConstants.connectionNotAvailable);
      return;
    }
    CartModel cartModel = CartModel.fromProduct(productModel, 1);
    _productAddToCartUseCase.execute(cartModel).then((value) {
      state = state.copyWith(noOfItems: 1);
    }).catchError((e) {
      MessageHandler.showSnackBar(title: e.toString());
    }).whenComplete(() {
      state = state.copyWith(addToCardLoading: false);
    });
  }

  Future<void> updateCartValues(ProductModel productModel, int cartValue, bool shouldIncrease) async {
    final int newCartValue = shouldIncrease ? cartValue + 1 : cartValue - 1;
    state = state.copyWith(addToCardLoading: true);

    if (newCartValue > 0) {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        MessageHandler.showSnackBar(title: StringsConstants.connectionNotAvailable);
        return;
      }
      final CartModel cartModel = CartModel.fromProduct(productModel, newCartValue);
      _productAddToCartUseCase.execute(cartModel).then((value) {
        state = state.copyWith(noOfItems: newCartValue);
      }).catchError((e) {
        MessageHandler.showSnackBar(title: e.toString());
      }).whenComplete(() {
        state = state.copyWith(addToCardLoading: false);
      });
    } else {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        MessageHandler.showSnackBar(title: StringsConstants.connectionNotAvailable);
        return;
      }
      _productDeleteCartUseCase.execute(productModel.productId!).then((value) {
        state = state.copyWith(showAddButton: true);
      }).catchError((e) {
        MessageHandler.showSnackBar(title: e.toString());
      }).whenComplete(() {
        state = state.copyWith(addToCardLoading: false);
      });
    }
  }
}

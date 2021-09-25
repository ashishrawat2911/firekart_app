import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/bloc/add_to_cart/add_to_cart_state.dart';
import 'package:fluttercommerce/src/core/utils/connectivity.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/cartModel_model.dart';
import 'package:fluttercommerce/src/models/product_model.dart';
import 'package:fluttercommerce/src/repository/auth_repository.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';
import 'package:fluttercommerce/src/res/string_constants.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit(this._firebaseRepo, this._authRepo) : super(ShowAddButton());

  final FirestoreRepository _firebaseRepo;
  final AuthRepository _authRepo;

  Future<void> listenToProduct(String productId) async {
    _firebaseRepo.cartStatusListen(await _authRepo.getUid()).listen((event) {
      checkItemInCart(productId, isListening: true);
    });
  }

  Future<void> checkItemInCart(String productId,
      {bool isListening = false}) async {
    if (!isListening) {
      emit(AddToCardLoading());
    }
    int cartValue = await _firebaseRepo.checkItemInCart(productId);
    if (cartValue > 0) {
      emit(ShowCartValue(cartValue));
    } else {
      emit(ShowAddButton());
    }
  }

  Future<void> addToCart(ProductModel productModel) async {
    emit(AddToCardLoading());
    if (!(await ConnectionStatus.getInstance().checkConnection())) {
      emit(AddToCartError(StringsConstants.connectionNotAvailable));
      return;
    }
    CartModel cartModel = CartModel.fromProduct(productModel, 1);
    _firebaseRepo.addProductToCart(cartModel).then((value) {
      emit(ShowCartValue(1));
    }).catchError((e) {
      emit(AddToCartError(e.toString()));
    });
  }

  Future<void> updateCartValues(
      ProductModel productModel, int cartValue, bool shouldIncrease) async {
    final int newCartValue = shouldIncrease ? cartValue + 1 : cartValue - 1;
    emit(const CartDataLoading());

    if (newCartValue > 0) {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        emit(UpdateCartError(
            StringsConstants.connectionNotAvailable, cartValue));
        return;
      }
      final CartModel cartModel =
          CartModel.fromProduct(productModel, newCartValue);
      _firebaseRepo.addProductToCart(cartModel).then((value) {
        emit(ShowCartValue(newCartValue));
      }).catchError((e) {
        emit(UpdateCartError(e.toString(), cartValue));
      });
    } else {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        emit(const DeleteCartError(StringsConstants.connectionNotAvailable));
        return;
      }
      _firebaseRepo.delProductFromCart(productModel.productId).then((value) {
        emit(const ShowAddButton());
      }).catchError((e) {
        emit(DeleteCartError(e.toString()));
      });
    }
  }
}

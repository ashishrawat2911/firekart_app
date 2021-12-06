import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/core/utils/connectivity.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/cart/state/add_to_cart_state.dart';
import 'package:fluttercommerce/features/common/models/cart_model.dart';
import 'package:fluttercommerce/features/common/models/product_model.dart';

class ProductViewModel extends Cubit<AddToCartState> {
  ProductViewModel(this._firebaseRepo) : super(ShowAddButton());

  final FirebaseManager _firebaseRepo;

  Future<void> listenToProduct(String productId) async {
    _firebaseRepo.cartStatusListen(await _firebaseRepo.getUid()).listen((event) {
      checkItemInCart(productId, isListening: true);
    });
  }

  Future<void> checkItemInCart(String productId, {bool isListening = false}) async {
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

  Future<void> updateCartValues(ProductModel productModel, int cartValue, bool shouldIncrease) async {
    final int newCartValue = shouldIncrease ? cartValue + 1 : cartValue - 1;
    emit(const CartDataLoading());

    if (newCartValue > 0) {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        emit(UpdateCartError(StringsConstants.connectionNotAvailable, cartValue));
        return;
      }
      final CartModel cartModel = CartModel.fromProduct(productModel, newCartValue);
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
      _firebaseRepo.delProductFromCart(productModel.productId!).then((value) {
        emit(const ShowAddButton());
      }).catchError((e) {
        emit(DeleteCartError(e.toString()));
      });
    }
  }
}

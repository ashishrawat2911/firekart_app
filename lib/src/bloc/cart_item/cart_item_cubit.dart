import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/core/utils/connectivity.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/cartModel_model.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';
import 'package:fluttercommerce/src/res/string_constants.dart';

import 'cart_item_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  var _firebaseRepo = AppInjector.get<FirestoreRepository>();

  CartItemCubit() : super(Idle());

  initCartValues(int cartValue) {
    emit(ShowCartValue(cartValue));
  }

  updateCartValues(
      CartModel? cartModel, int? cartValue, bool shouldIncrease) async {
    int newCartValue = shouldIncrease ? cartValue! + 1 : cartValue! - 1;
    emit(CartDataLoading());
    if (newCartValue > 0) {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        emit(UpdateCartError(
            StringsConstants.connectionNotAvailable, cartValue));
        return;
      }
      cartModel!.numOfItems = newCartValue;
      _firebaseRepo!.addProductToCart(cartModel).then((value) {
        emit(ShowCartValue(newCartValue));
      }).catchError((e) {
        emit(UpdateCartError(e.toString(), cartValue));
      });
    } else {
      deleteItem(cartModel, deleteExternally: false);
    }
  }

  deleteItem(CartModel? cartModel, {bool deleteExternally = true}) async {
    if (deleteExternally) {
      emit(CartDeleteLoading());
    }
    if (!(await ConnectionStatus.getInstance().checkConnection())) {
      emit(DeleteCartError(StringsConstants.connectionNotAvailable));
      return;
    }
    _firebaseRepo!.delProductFromCart(cartModel!.productId!).then((value) {
      emit(ItemDeleted());
    }).catchError((e) {
      emit(DeleteCartError(e.toString()));
    });
  }
}

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
import 'package:firekart/core/logger/app_logger.dart';
import 'package:firekart/core/message_handler/message_handler.dart';
import 'package:firekart/core/state_manager/view_model.dart';
import 'package:firekart/domain/models/product_model.dart';
import 'package:firekart/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:firekart/domain/usecases/get_cart_status_use_case.dart';
import 'package:firekart/domain/usecases/get_items_in_cart_usecase.dart';
import 'package:firekart/domain/usecases/update_cart_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../state/add_to_cart_state.dart';

@injectable
class ProductViewModel extends ViewModel<AddToCartState> {
  ProductViewModel(
    this._getItemsInCartUseCase,
    this._productAddToCartUseCase,
    this._getCartStatusUseCase,
    this._updateCartUseCase,
  ) : super(const AddToCartState());

  final GetItemsInCartUseCase _getItemsInCartUseCase;
  final ProductAddToCartUseCase _productAddToCartUseCase;
  final GetCartStatusUseCase _getCartStatusUseCase;
  final UpdateCartUseCase _updateCartUseCase;

  Future<void> checkItemInCart(int productId) async {
    _getCartStatusUseCase.watch().listen((carts) {
      if (carts.isNotEmpty) {
        final int cartValue = _getItemsInCartUseCase.execute(productId, carts);
        AppLogger.log(cartValue);
        if (cartValue > 0) {
          state = state.copyWith(noOfItems: cartValue);
        } else {
          state = state.copyWith(showAddButton: true);
        }
      }
    });
  }

  Future<void> addToCart(Product productModel) async {
    state = state.copyWith(addToCardLoading: true);

    final res = await _productAddToCartUseCase.execute(productModel.productId);

    res.fold((l) {
      MessageHandler.showSnackBar(title: l.errorMessage);
    }, (r) {
      state = state.copyWith(noOfItems: 1);
    });
    state = state.copyWith(addToCardLoading: false);
  }

  Future<void> updateCartValues(
    Product productModel,
    int cartValue,
    bool shouldIncrease,
  ) async {
    final int newCartValue = shouldIncrease ? cartValue + 1 : cartValue - 1;
    state = state.copyWith(addToCardLoading: true);

    if (newCartValue > 0) {
      await _updateCartUseCase
          .execute(productModel.productId, newCartValue)
          .then((value) {
        value.fold((e) {
          MessageHandler.showSnackBar(title: e.errorMessage);
        }, (r) {
          state = state.copyWith(noOfItems: newCartValue);
        });
      }).whenComplete(() {
        state = state.copyWith(addToCardLoading: false);
      });
    } else {
      state = state.copyWith(
        showAddButton: true,
        noOfItems: newCartValue,
        addToCardLoading: false,
      );
    }
  }
}

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
import 'package:core/logger/app_logger.dart';
import 'package:core/message_handler/message_handler.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:domain/models/product_model.dart';
import 'package:domain/usecases/add_product_to_cart_usecase.dart';
import 'package:domain/usecases/get_cart_status_use_case.dart';
import 'package:domain/usecases/get_items_in_cart_usecase.dart';
import 'package:domain/usecases/get_product_details_usecase.dart';
import 'package:domain/usecases/update_cart_usecase.dart';
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
    this._getProductDetailsUseCase,
  ) : super(const AddToCartState());

  final GetItemsInCartUseCase _getItemsInCartUseCase;
  final ProductAddToCartUseCase _productAddToCartUseCase;
  final GetCartStatusUseCase _getCartStatusUseCase;
  final UpdateCartUseCase _updateCartUseCase;
  final GetProductDetailsUseCase _getProductDetailsUseCase;

  Future<void> initialize(int productId) async {
    final res = await _getProductDetailsUseCase.execute(productId);
    res.fold((l) {
      state = state.copyWith(product: ProductError(l));
    }, (r) {
      state = state.copyWith(product: ProductData(r));
    });
    await checkItemInCart(productId);
  }

  Future<void> checkItemInCart(int productId) async {
    _getCartStatusUseCase.watch().listen((carts) {
      state = state.copyWith(addToCardLoading: true);

      final int cartValue = _getItemsInCartUseCase.execute(productId, carts);
      AppLogger.log('Cart Value : PD $cartValue');
      if (cartValue > 0) {
        state = state.copyWith(
          noOfItems: cartValue,
          showAddButton: false,
        );
      } else if (cartValue == 0) {
        state = state.copyWith(showAddButton: true, noOfItems: 0);
      }
      state = state.copyWith(addToCardLoading: false);
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
    state = state.copyWith(cartDataLoading: true);

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
        state = state.copyWith(cartDataLoading: false);
      });
    } else {
      state = state.copyWith(
        showAddButton: true,
        noOfItems: newCartValue,
        cartDataLoading: false,
      );
    }
  }
}

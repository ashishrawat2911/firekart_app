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
import 'package:domain/models/product_model.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_state.freezed.dart';

@freezed
class AddToCartState with _$AddToCartState {
  const factory AddToCartState({
    @Default(false) bool addToCardLoading,
    @Default(true) bool showAddButton,
    @Default(false) bool cartDataLoading,
    @Default(0) num noOfItems,
    @Default(ProductState.loading()) ProductState product,
  }) = _AddToCartState;
}

@freezed
class ProductState with _$ProductState {
  const factory ProductState.loading() = ProductLoading;

  const factory ProductState.data(Product product) = ProductData;

  const factory ProductState.error(NetworkError error) = ProductError;
}

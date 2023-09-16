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
import 'package:domain/models/account_details_model.dart';
import 'package:domain/models/cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(0) int cartValue,
    @Default(false) bool cartDataLoading,
    @Default(false) bool cartDeleteLoading,
    @Default(false) bool orderInProgress,
    String? cartError,
    String? deleteCartError,
    @Default(<Cart>[]) List<Cart> cartList,
    Address? selectedAddress,
    @Default(CartDataLoading()) CartDataLoading cartItemDataLoading,
  }) = _CartState;
}

@freezed
abstract class CartDataLoading with _$CartDataLoading {
  const factory CartDataLoading({
    @Default(0) int index,
    @Default(false) bool isLoading,
    @Default(false) bool deleteLoading,
  }) = _CartDataLoading;
}

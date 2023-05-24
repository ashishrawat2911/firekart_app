/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_state.freezed.dart';

@freezed
class AddToCartState with _$AddToCartState {
  const factory AddToCartState({
    @Default(false) bool addToCardLoading,
    @Default(false) bool showAddButton,
    @Default(false) bool cartDataLoading,
    @Default(0) num noOfItems,
  }) = _AddToCartState;
}

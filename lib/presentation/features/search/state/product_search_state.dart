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
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_search_state.freezed.dart';

@freezed
class ProductSearchState with _$ProductSearchState {
  const factory ProductSearchState({
    @Default(<Product>[]) List<Product> productList,
    @Default(false) bool loading,
    String? otp,
    String? error,
  }) = _ProductSearchState;
}

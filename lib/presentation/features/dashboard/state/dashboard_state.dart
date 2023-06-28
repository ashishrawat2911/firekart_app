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
import 'package:fluttercommerce/core/state/result_state.dart';
import 'package:fluttercommerce/domain/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(Idle<List<Product>>()) ResultState<List<Product>> dealOfTheDay,
    @Default(Idle<List<Product>>()) ResultState<List<Product>> onSale,
    @Default(Idle<List<Product>>()) ResultState<List<Product>> topProducts,
  }) = _DashboardState;
}

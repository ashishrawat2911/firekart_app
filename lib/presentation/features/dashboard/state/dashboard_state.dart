import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/state/result_state.dart';
import '../../../../domain/models/product_model.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(Idle<List<Product>>()) ResultState<List<Product>> dealOfTheDay,
    @Default(Idle<List<Product>>()) ResultState<List<Product>> onSale,
    @Default(Idle<List<Product>>()) ResultState<List<Product>> topProducts,
  }) = _DashboardState;
}

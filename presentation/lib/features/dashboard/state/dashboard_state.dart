import 'package:core/state/result_state.dart';
import 'package:domain/models/product_model.dart';
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

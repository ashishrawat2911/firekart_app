import 'package:core/core.dart';
import 'package:network/network.dart';

part 'dashboard_state.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(Idle()) ResultState<List<ProductModel>> dealOfTheDay,
    @Default(Idle()) ResultState<List<ProductModel>> onSale,
    @Default(Idle()) ResultState<List<ProductModel>> topProducts,
  }) = _DashboardState;
}

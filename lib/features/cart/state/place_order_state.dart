import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_order_state.freezed.dart';

@freezed
abstract class PlaceOrderState with _$PlaceOrderState {
  const factory PlaceOrderState.idle() = Idle;

  const factory PlaceOrderState.orderPlacedInProgress() = OrderPlacedInProgress;

  const factory PlaceOrderState.orderSuccessfullyPlaced() =
      OrderSuccessfullyPlaced;

  const factory PlaceOrderState.orderNotPlaced(String message) = OrderNotPlaced;
}

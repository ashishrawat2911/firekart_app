import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
abstract class CartState with _$CartState{
  const factory CartState({
    @Default(0) int cartValue,
    @Default(false) bool cartDataLoading,
    @Default(false) bool cartDeleteLoading,
    String? cartError,
    String? deleteCartError,
  }) = _CartState;
}

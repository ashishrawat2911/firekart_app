import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/network.dart';

part 'cart_state.freezed.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    @Default(0) int cartValue,
    @Default(false) bool cartDataLoading,
    @Default(false) bool cartDeleteLoading,
    @Default(false) bool orderInProgress,
    String? cartError,
    String? deleteCartError,
    @Default([]) List<CartModel> cartList,
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

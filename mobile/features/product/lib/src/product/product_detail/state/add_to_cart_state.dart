import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_state.freezed.dart';

@freezed
abstract class AddToCartState with _$AddToCartState {
  const factory AddToCartState({
    @Default(false) bool addToCardLoading,
    @Default(false) bool showAddButton,
    @Default(false) bool cartDataLoading,
    @Default(0) num noOfItems,
  }) = _AddToCartState;
}

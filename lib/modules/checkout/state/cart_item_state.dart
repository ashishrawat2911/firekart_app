import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_state.freezed.dart';

@freezed
abstract class CartItemState with _$CartItemState {
  const factory CartItemState.idle() = Idle;

  const factory CartItemState.cartDataLoading() = CartDataLoading;

  const factory CartItemState.showCartValue(num noOfItems) = ShowCartValue;

  const factory CartItemState.addToCartError(String errorMessage) =
      AddToCartError;

  const factory CartItemState.updateCartError(
      String errorMessage, int cartValue) = UpdateCartError;

  const factory CartItemState.cartDeleteLoading() = CartDeleteLoading;

  const factory CartItemState.deleteCartError(String errorMessage) =
      DeleteCartError;

  const factory CartItemState.itemDeleted() = ItemDeleted;
}

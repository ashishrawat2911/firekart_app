import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_state.freezed.dart';

@freezed
abstract class AddToCartState with _$AddToCartState {
  const factory AddToCartState.addToCardLoading() = AddToCardLoading;

  const factory AddToCartState.showAddButton() = ShowAddButton;

  const factory AddToCartState.cartDataLoading() = CartDataLoading;

  const factory AddToCartState.showCartValue(num noOfItems) = ShowCartValue;

  const factory AddToCartState.addToCartError(String errorMessage) = AddToCartError;

  const factory AddToCartState.updateCartError(String errorMessage, int cartValue) = UpdateCartError;

  const factory AddToCartState.deleteCartError(String errorMessage) = DeleteCartError;
}

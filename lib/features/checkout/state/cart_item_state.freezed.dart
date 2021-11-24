// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CartItemStateTearOff {
  const _$CartItemStateTearOff();

// ignore: unused_element
  Idle idle() {
    return const Idle();
  }

// ignore: unused_element
  CartDataLoading cartDataLoading() {
    return const CartDataLoading();
  }

// ignore: unused_element
  ShowCartValue showCartValue(num noOfItems) {
    return ShowCartValue(
      noOfItems,
    );
  }

// ignore: unused_element
  AddToCartError addToCartError(String errorMessage) {
    return AddToCartError(
      errorMessage,
    );
  }

// ignore: unused_element
  UpdateCartError updateCartError(String errorMessage, int cartValue) {
    return UpdateCartError(
      errorMessage,
      cartValue,
    );
  }

// ignore: unused_element
  CartDeleteLoading cartDeleteLoading() {
    return const CartDeleteLoading();
  }

// ignore: unused_element
  DeleteCartError deleteCartError(String errorMessage) {
    return DeleteCartError(
      errorMessage,
    );
  }

// ignore: unused_element
  ItemDeleted itemDeleted() {
    return const ItemDeleted();
  }
}

/// @nodoc
// ignore: unused_element
const $CartItemState = _$CartItemStateTearOff();

/// @nodoc
mixin _$CartItemState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result cartDataLoading(),
    @required Result showCartValue(num noOfItems),
    @required Result addToCartError(String errorMessage),
    @required Result updateCartError(String errorMessage, int cartValue),
    @required Result cartDeleteLoading(),
    @required Result deleteCartError(String errorMessage),
    @required Result itemDeleted(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result cartDataLoading(),
    Result showCartValue(num noOfItems),
    Result addToCartError(String errorMessage),
    Result updateCartError(String errorMessage, int cartValue),
    Result cartDeleteLoading(),
    Result deleteCartError(String errorMessage),
    Result itemDeleted(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result cartDataLoading(CartDataLoading value),
    @required Result showCartValue(ShowCartValue value),
    @required Result addToCartError(AddToCartError value),
    @required Result updateCartError(UpdateCartError value),
    @required Result cartDeleteLoading(CartDeleteLoading value),
    @required Result deleteCartError(DeleteCartError value),
    @required Result itemDeleted(ItemDeleted value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result cartDataLoading(CartDataLoading value),
    Result showCartValue(ShowCartValue value),
    Result addToCartError(AddToCartError value),
    Result updateCartError(UpdateCartError value),
    Result cartDeleteLoading(CartDeleteLoading value),
    Result deleteCartError(DeleteCartError value),
    Result itemDeleted(ItemDeleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CartItemStateCopyWith<$Res> {
  factory $CartItemStateCopyWith(
          CartItemState value, $Res Function(CartItemState) then) =
      _$CartItemStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartItemStateCopyWithImpl<$Res>
    implements $CartItemStateCopyWith<$Res> {
  _$CartItemStateCopyWithImpl(this._value, this._then);

  final CartItemState _value;

  // ignore: unused_field
  final $Res Function(CartItemState) _then;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> extends _$CartItemStateCopyWithImpl<$Res>
    implements $IdleCopyWith<$Res> {
  _$IdleCopyWithImpl(Idle _value, $Res Function(Idle) _then)
      : super(_value, (v) => _then(v as Idle));

  @override
  Idle get _value => super._value as Idle;
}

/// @nodoc
class _$Idle implements Idle {
  const _$Idle();

  @override
  String toString() {
    return 'CartItemState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result cartDataLoading(),
    @required Result showCartValue(num noOfItems),
    @required Result addToCartError(String errorMessage),
    @required Result updateCartError(String errorMessage, int cartValue),
    @required Result cartDeleteLoading(),
    @required Result deleteCartError(String errorMessage),
    @required Result itemDeleted(),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result cartDataLoading(),
    Result showCartValue(num noOfItems),
    Result addToCartError(String errorMessage),
    Result updateCartError(String errorMessage, int cartValue),
    Result cartDeleteLoading(),
    Result deleteCartError(String errorMessage),
    Result itemDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result cartDataLoading(CartDataLoading value),
    @required Result showCartValue(ShowCartValue value),
    @required Result addToCartError(AddToCartError value),
    @required Result updateCartError(UpdateCartError value),
    @required Result cartDeleteLoading(CartDeleteLoading value),
    @required Result deleteCartError(DeleteCartError value),
    @required Result itemDeleted(ItemDeleted value),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result cartDataLoading(CartDataLoading value),
    Result showCartValue(ShowCartValue value),
    Result addToCartError(AddToCartError value),
    Result updateCartError(UpdateCartError value),
    Result cartDeleteLoading(CartDeleteLoading value),
    Result deleteCartError(DeleteCartError value),
    Result itemDeleted(ItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements CartItemState {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class $CartDataLoadingCopyWith<$Res> {
  factory $CartDataLoadingCopyWith(
          CartDataLoading value, $Res Function(CartDataLoading) then) =
      _$CartDataLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartDataLoadingCopyWithImpl<$Res>
    extends _$CartItemStateCopyWithImpl<$Res>
    implements $CartDataLoadingCopyWith<$Res> {
  _$CartDataLoadingCopyWithImpl(
      CartDataLoading _value, $Res Function(CartDataLoading) _then)
      : super(_value, (v) => _then(v as CartDataLoading));

  @override
  CartDataLoading get _value => super._value as CartDataLoading;
}

/// @nodoc
class _$CartDataLoading implements CartDataLoading {
  const _$CartDataLoading();

  @override
  String toString() {
    return 'CartItemState.cartDataLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CartDataLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result cartDataLoading(),
    @required Result showCartValue(num noOfItems),
    @required Result addToCartError(String errorMessage),
    @required Result updateCartError(String errorMessage, int cartValue),
    @required Result cartDeleteLoading(),
    @required Result deleteCartError(String errorMessage),
    @required Result itemDeleted(),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return cartDataLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result cartDataLoading(),
    Result showCartValue(num noOfItems),
    Result addToCartError(String errorMessage),
    Result updateCartError(String errorMessage, int cartValue),
    Result cartDeleteLoading(),
    Result deleteCartError(String errorMessage),
    Result itemDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cartDataLoading != null) {
      return cartDataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result cartDataLoading(CartDataLoading value),
    @required Result showCartValue(ShowCartValue value),
    @required Result addToCartError(AddToCartError value),
    @required Result updateCartError(UpdateCartError value),
    @required Result cartDeleteLoading(CartDeleteLoading value),
    @required Result deleteCartError(DeleteCartError value),
    @required Result itemDeleted(ItemDeleted value),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return cartDataLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result cartDataLoading(CartDataLoading value),
    Result showCartValue(ShowCartValue value),
    Result addToCartError(AddToCartError value),
    Result updateCartError(UpdateCartError value),
    Result cartDeleteLoading(CartDeleteLoading value),
    Result deleteCartError(DeleteCartError value),
    Result itemDeleted(ItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cartDataLoading != null) {
      return cartDataLoading(this);
    }
    return orElse();
  }
}

abstract class CartDataLoading implements CartItemState {
  const factory CartDataLoading() = _$CartDataLoading;
}

/// @nodoc
abstract class $ShowCartValueCopyWith<$Res> {
  factory $ShowCartValueCopyWith(
          ShowCartValue value, $Res Function(ShowCartValue) then) =
      _$ShowCartValueCopyWithImpl<$Res>;

  $Res call({num noOfItems});
}

/// @nodoc
class _$ShowCartValueCopyWithImpl<$Res>
    extends _$CartItemStateCopyWithImpl<$Res>
    implements $ShowCartValueCopyWith<$Res> {
  _$ShowCartValueCopyWithImpl(
      ShowCartValue _value, $Res Function(ShowCartValue) _then)
      : super(_value, (v) => _then(v as ShowCartValue));

  @override
  ShowCartValue get _value => super._value as ShowCartValue;

  @override
  $Res call({
    Object noOfItems = freezed,
  }) {
    return _then(ShowCartValue(
      noOfItems == freezed ? _value.noOfItems : noOfItems as num,
    ));
  }
}

/// @nodoc
class _$ShowCartValue implements ShowCartValue {
  const _$ShowCartValue(this.noOfItems) : assert(noOfItems != null);

  @override
  final num noOfItems;

  @override
  String toString() {
    return 'CartItemState.showCartValue(noOfItems: $noOfItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowCartValue &&
            (identical(other.noOfItems, noOfItems) ||
                const DeepCollectionEquality()
                    .equals(other.noOfItems, noOfItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(noOfItems);

  @override
  $ShowCartValueCopyWith<ShowCartValue> get copyWith =>
      _$ShowCartValueCopyWithImpl<ShowCartValue>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result cartDataLoading(),
    @required Result showCartValue(num noOfItems),
    @required Result addToCartError(String errorMessage),
    @required Result updateCartError(String errorMessage, int cartValue),
    @required Result cartDeleteLoading(),
    @required Result deleteCartError(String errorMessage),
    @required Result itemDeleted(),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return showCartValue(noOfItems);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result cartDataLoading(),
    Result showCartValue(num noOfItems),
    Result addToCartError(String errorMessage),
    Result updateCartError(String errorMessage, int cartValue),
    Result cartDeleteLoading(),
    Result deleteCartError(String errorMessage),
    Result itemDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showCartValue != null) {
      return showCartValue(noOfItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result cartDataLoading(CartDataLoading value),
    @required Result showCartValue(ShowCartValue value),
    @required Result addToCartError(AddToCartError value),
    @required Result updateCartError(UpdateCartError value),
    @required Result cartDeleteLoading(CartDeleteLoading value),
    @required Result deleteCartError(DeleteCartError value),
    @required Result itemDeleted(ItemDeleted value),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return showCartValue(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result cartDataLoading(CartDataLoading value),
    Result showCartValue(ShowCartValue value),
    Result addToCartError(AddToCartError value),
    Result updateCartError(UpdateCartError value),
    Result cartDeleteLoading(CartDeleteLoading value),
    Result deleteCartError(DeleteCartError value),
    Result itemDeleted(ItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showCartValue != null) {
      return showCartValue(this);
    }
    return orElse();
  }
}

abstract class ShowCartValue implements CartItemState {
  const factory ShowCartValue(num noOfItems) = _$ShowCartValue;

  num get noOfItems;

  $ShowCartValueCopyWith<ShowCartValue> get copyWith;
}

/// @nodoc
abstract class $AddToCartErrorCopyWith<$Res> {
  factory $AddToCartErrorCopyWith(
          AddToCartError value, $Res Function(AddToCartError) then) =
      _$AddToCartErrorCopyWithImpl<$Res>;

  $Res call({String errorMessage});
}

/// @nodoc
class _$AddToCartErrorCopyWithImpl<$Res>
    extends _$CartItemStateCopyWithImpl<$Res>
    implements $AddToCartErrorCopyWith<$Res> {
  _$AddToCartErrorCopyWithImpl(
      AddToCartError _value, $Res Function(AddToCartError) _then)
      : super(_value, (v) => _then(v as AddToCartError));

  @override
  AddToCartError get _value => super._value as AddToCartError;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(AddToCartError(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$AddToCartError implements AddToCartError {
  const _$AddToCartError(this.errorMessage) : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CartItemState.addToCartError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddToCartError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  $AddToCartErrorCopyWith<AddToCartError> get copyWith =>
      _$AddToCartErrorCopyWithImpl<AddToCartError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result cartDataLoading(),
    @required Result showCartValue(num noOfItems),
    @required Result addToCartError(String errorMessage),
    @required Result updateCartError(String errorMessage, int cartValue),
    @required Result cartDeleteLoading(),
    @required Result deleteCartError(String errorMessage),
    @required Result itemDeleted(),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return addToCartError(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result cartDataLoading(),
    Result showCartValue(num noOfItems),
    Result addToCartError(String errorMessage),
    Result updateCartError(String errorMessage, int cartValue),
    Result cartDeleteLoading(),
    Result deleteCartError(String errorMessage),
    Result itemDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addToCartError != null) {
      return addToCartError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result cartDataLoading(CartDataLoading value),
    @required Result showCartValue(ShowCartValue value),
    @required Result addToCartError(AddToCartError value),
    @required Result updateCartError(UpdateCartError value),
    @required Result cartDeleteLoading(CartDeleteLoading value),
    @required Result deleteCartError(DeleteCartError value),
    @required Result itemDeleted(ItemDeleted value),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return addToCartError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result cartDataLoading(CartDataLoading value),
    Result showCartValue(ShowCartValue value),
    Result addToCartError(AddToCartError value),
    Result updateCartError(UpdateCartError value),
    Result cartDeleteLoading(CartDeleteLoading value),
    Result deleteCartError(DeleteCartError value),
    Result itemDeleted(ItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addToCartError != null) {
      return addToCartError(this);
    }
    return orElse();
  }
}

abstract class AddToCartError implements CartItemState {
  const factory AddToCartError(String errorMessage) = _$AddToCartError;

  String get errorMessage;

  $AddToCartErrorCopyWith<AddToCartError> get copyWith;
}

/// @nodoc
abstract class $UpdateCartErrorCopyWith<$Res> {
  factory $UpdateCartErrorCopyWith(
          UpdateCartError value, $Res Function(UpdateCartError) then) =
      _$UpdateCartErrorCopyWithImpl<$Res>;

  $Res call({String errorMessage, int cartValue});
}

/// @nodoc
class _$UpdateCartErrorCopyWithImpl<$Res>
    extends _$CartItemStateCopyWithImpl<$Res>
    implements $UpdateCartErrorCopyWith<$Res> {
  _$UpdateCartErrorCopyWithImpl(
      UpdateCartError _value, $Res Function(UpdateCartError) _then)
      : super(_value, (v) => _then(v as UpdateCartError));

  @override
  UpdateCartError get _value => super._value as UpdateCartError;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object cartValue = freezed,
  }) {
    return _then(UpdateCartError(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
      cartValue == freezed ? _value.cartValue : cartValue as int,
    ));
  }
}

/// @nodoc
class _$UpdateCartError implements UpdateCartError {
  const _$UpdateCartError(this.errorMessage, this.cartValue)
      : assert(errorMessage != null),
        assert(cartValue != null);

  @override
  final String errorMessage;
  @override
  final int cartValue;

  @override
  String toString() {
    return 'CartItemState.updateCartError(errorMessage: $errorMessage, cartValue: $cartValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCartError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.cartValue, cartValue) ||
                const DeepCollectionEquality()
                    .equals(other.cartValue, cartValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(cartValue);

  @override
  $UpdateCartErrorCopyWith<UpdateCartError> get copyWith =>
      _$UpdateCartErrorCopyWithImpl<UpdateCartError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result cartDataLoading(),
    @required Result showCartValue(num noOfItems),
    @required Result addToCartError(String errorMessage),
    @required Result updateCartError(String errorMessage, int cartValue),
    @required Result cartDeleteLoading(),
    @required Result deleteCartError(String errorMessage),
    @required Result itemDeleted(),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return updateCartError(errorMessage, cartValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result cartDataLoading(),
    Result showCartValue(num noOfItems),
    Result addToCartError(String errorMessage),
    Result updateCartError(String errorMessage, int cartValue),
    Result cartDeleteLoading(),
    Result deleteCartError(String errorMessage),
    Result itemDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCartError != null) {
      return updateCartError(errorMessage, cartValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result cartDataLoading(CartDataLoading value),
    @required Result showCartValue(ShowCartValue value),
    @required Result addToCartError(AddToCartError value),
    @required Result updateCartError(UpdateCartError value),
    @required Result cartDeleteLoading(CartDeleteLoading value),
    @required Result deleteCartError(DeleteCartError value),
    @required Result itemDeleted(ItemDeleted value),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return updateCartError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result cartDataLoading(CartDataLoading value),
    Result showCartValue(ShowCartValue value),
    Result addToCartError(AddToCartError value),
    Result updateCartError(UpdateCartError value),
    Result cartDeleteLoading(CartDeleteLoading value),
    Result deleteCartError(DeleteCartError value),
    Result itemDeleted(ItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCartError != null) {
      return updateCartError(this);
    }
    return orElse();
  }
}

abstract class UpdateCartError implements CartItemState {
  const factory UpdateCartError(String errorMessage, int cartValue) =
      _$UpdateCartError;

  String get errorMessage;

  int get cartValue;

  $UpdateCartErrorCopyWith<UpdateCartError> get copyWith;
}

/// @nodoc
abstract class $CartDeleteLoadingCopyWith<$Res> {
  factory $CartDeleteLoadingCopyWith(
          CartDeleteLoading value, $Res Function(CartDeleteLoading) then) =
      _$CartDeleteLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartDeleteLoadingCopyWithImpl<$Res>
    extends _$CartItemStateCopyWithImpl<$Res>
    implements $CartDeleteLoadingCopyWith<$Res> {
  _$CartDeleteLoadingCopyWithImpl(
      CartDeleteLoading _value, $Res Function(CartDeleteLoading) _then)
      : super(_value, (v) => _then(v as CartDeleteLoading));

  @override
  CartDeleteLoading get _value => super._value as CartDeleteLoading;
}

/// @nodoc
class _$CartDeleteLoading implements CartDeleteLoading {
  const _$CartDeleteLoading();

  @override
  String toString() {
    return 'CartItemState.cartDeleteLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CartDeleteLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result cartDataLoading(),
    @required Result showCartValue(num noOfItems),
    @required Result addToCartError(String errorMessage),
    @required Result updateCartError(String errorMessage, int cartValue),
    @required Result cartDeleteLoading(),
    @required Result deleteCartError(String errorMessage),
    @required Result itemDeleted(),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return cartDeleteLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result cartDataLoading(),
    Result showCartValue(num noOfItems),
    Result addToCartError(String errorMessage),
    Result updateCartError(String errorMessage, int cartValue),
    Result cartDeleteLoading(),
    Result deleteCartError(String errorMessage),
    Result itemDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cartDeleteLoading != null) {
      return cartDeleteLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result cartDataLoading(CartDataLoading value),
    @required Result showCartValue(ShowCartValue value),
    @required Result addToCartError(AddToCartError value),
    @required Result updateCartError(UpdateCartError value),
    @required Result cartDeleteLoading(CartDeleteLoading value),
    @required Result deleteCartError(DeleteCartError value),
    @required Result itemDeleted(ItemDeleted value),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return cartDeleteLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result cartDataLoading(CartDataLoading value),
    Result showCartValue(ShowCartValue value),
    Result addToCartError(AddToCartError value),
    Result updateCartError(UpdateCartError value),
    Result cartDeleteLoading(CartDeleteLoading value),
    Result deleteCartError(DeleteCartError value),
    Result itemDeleted(ItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cartDeleteLoading != null) {
      return cartDeleteLoading(this);
    }
    return orElse();
  }
}

abstract class CartDeleteLoading implements CartItemState {
  const factory CartDeleteLoading() = _$CartDeleteLoading;
}

/// @nodoc
abstract class $DeleteCartErrorCopyWith<$Res> {
  factory $DeleteCartErrorCopyWith(
          DeleteCartError value, $Res Function(DeleteCartError) then) =
      _$DeleteCartErrorCopyWithImpl<$Res>;

  $Res call({String errorMessage});
}

/// @nodoc
class _$DeleteCartErrorCopyWithImpl<$Res>
    extends _$CartItemStateCopyWithImpl<$Res>
    implements $DeleteCartErrorCopyWith<$Res> {
  _$DeleteCartErrorCopyWithImpl(
      DeleteCartError _value, $Res Function(DeleteCartError) _then)
      : super(_value, (v) => _then(v as DeleteCartError));

  @override
  DeleteCartError get _value => super._value as DeleteCartError;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(DeleteCartError(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$DeleteCartError implements DeleteCartError {
  const _$DeleteCartError(this.errorMessage) : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CartItemState.deleteCartError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteCartError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  $DeleteCartErrorCopyWith<DeleteCartError> get copyWith =>
      _$DeleteCartErrorCopyWithImpl<DeleteCartError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result cartDataLoading(),
    @required Result showCartValue(num noOfItems),
    @required Result addToCartError(String errorMessage),
    @required Result updateCartError(String errorMessage, int cartValue),
    @required Result cartDeleteLoading(),
    @required Result deleteCartError(String errorMessage),
    @required Result itemDeleted(),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return deleteCartError(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result cartDataLoading(),
    Result showCartValue(num noOfItems),
    Result addToCartError(String errorMessage),
    Result updateCartError(String errorMessage, int cartValue),
    Result cartDeleteLoading(),
    Result deleteCartError(String errorMessage),
    Result itemDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCartError != null) {
      return deleteCartError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result cartDataLoading(CartDataLoading value),
    @required Result showCartValue(ShowCartValue value),
    @required Result addToCartError(AddToCartError value),
    @required Result updateCartError(UpdateCartError value),
    @required Result cartDeleteLoading(CartDeleteLoading value),
    @required Result deleteCartError(DeleteCartError value),
    @required Result itemDeleted(ItemDeleted value),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return deleteCartError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result cartDataLoading(CartDataLoading value),
    Result showCartValue(ShowCartValue value),
    Result addToCartError(AddToCartError value),
    Result updateCartError(UpdateCartError value),
    Result cartDeleteLoading(CartDeleteLoading value),
    Result deleteCartError(DeleteCartError value),
    Result itemDeleted(ItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCartError != null) {
      return deleteCartError(this);
    }
    return orElse();
  }
}

abstract class DeleteCartError implements CartItemState {
  const factory DeleteCartError(String errorMessage) = _$DeleteCartError;

  String get errorMessage;

  $DeleteCartErrorCopyWith<DeleteCartError> get copyWith;
}

/// @nodoc
abstract class $ItemDeletedCopyWith<$Res> {
  factory $ItemDeletedCopyWith(
          ItemDeleted value, $Res Function(ItemDeleted) then) =
      _$ItemDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemDeletedCopyWithImpl<$Res> extends _$CartItemStateCopyWithImpl<$Res>
    implements $ItemDeletedCopyWith<$Res> {
  _$ItemDeletedCopyWithImpl(
      ItemDeleted _value, $Res Function(ItemDeleted) _then)
      : super(_value, (v) => _then(v as ItemDeleted));

  @override
  ItemDeleted get _value => super._value as ItemDeleted;
}

/// @nodoc
class _$ItemDeleted implements ItemDeleted {
  const _$ItemDeleted();

  @override
  String toString() {
    return 'CartItemState.itemDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ItemDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result cartDataLoading(),
    @required Result showCartValue(num noOfItems),
    @required Result addToCartError(String errorMessage),
    @required Result updateCartError(String errorMessage, int cartValue),
    @required Result cartDeleteLoading(),
    @required Result deleteCartError(String errorMessage),
    @required Result itemDeleted(),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return itemDeleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result cartDataLoading(),
    Result showCartValue(num noOfItems),
    Result addToCartError(String errorMessage),
    Result updateCartError(String errorMessage, int cartValue),
    Result cartDeleteLoading(),
    Result deleteCartError(String errorMessage),
    Result itemDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (itemDeleted != null) {
      return itemDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result cartDataLoading(CartDataLoading value),
    @required Result showCartValue(ShowCartValue value),
    @required Result addToCartError(AddToCartError value),
    @required Result updateCartError(UpdateCartError value),
    @required Result cartDeleteLoading(CartDeleteLoading value),
    @required Result deleteCartError(DeleteCartError value),
    @required Result itemDeleted(ItemDeleted value),
  }) {
    assert(idle != null);
    assert(cartDataLoading != null);
    assert(showCartValue != null);
    assert(addToCartError != null);
    assert(updateCartError != null);
    assert(cartDeleteLoading != null);
    assert(deleteCartError != null);
    assert(itemDeleted != null);
    return itemDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result cartDataLoading(CartDataLoading value),
    Result showCartValue(ShowCartValue value),
    Result addToCartError(AddToCartError value),
    Result updateCartError(UpdateCartError value),
    Result cartDeleteLoading(CartDeleteLoading value),
    Result deleteCartError(DeleteCartError value),
    Result itemDeleted(ItemDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (itemDeleted != null) {
      return itemDeleted(this);
    }
    return orElse();
  }
}

abstract class ItemDeleted implements CartItemState {
  const factory ItemDeleted() = _$ItemDeleted;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call(
      {int cartValue = 0,
      bool cartDataLoading = false,
      bool cartDeleteLoading = false,
      String? cartError,
      String? deleteCartError}) {
    return _CartState(
      cartValue: cartValue,
      cartDataLoading: cartDataLoading,
      cartDeleteLoading: cartDeleteLoading,
      cartError: cartError,
      deleteCartError: deleteCartError,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  int get cartValue => throw _privateConstructorUsedError;
  bool get cartDataLoading => throw _privateConstructorUsedError;
  bool get cartDeleteLoading => throw _privateConstructorUsedError;
  String? get cartError => throw _privateConstructorUsedError;
  String? get deleteCartError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call(
      {int cartValue,
      bool cartDataLoading,
      bool cartDeleteLoading,
      String? cartError,
      String? deleteCartError});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? cartValue = freezed,
    Object? cartDataLoading = freezed,
    Object? cartDeleteLoading = freezed,
    Object? cartError = freezed,
    Object? deleteCartError = freezed,
  }) {
    return _then(_value.copyWith(
      cartValue: cartValue == freezed
          ? _value.cartValue
          : cartValue // ignore: cast_nullable_to_non_nullable
              as int,
      cartDataLoading: cartDataLoading == freezed
          ? _value.cartDataLoading
          : cartDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDeleteLoading: cartDeleteLoading == freezed
          ? _value.cartDeleteLoading
          : cartDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartError: cartError == freezed
          ? _value.cartError
          : cartError // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteCartError: deleteCartError == freezed
          ? _value.deleteCartError
          : deleteCartError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int cartValue,
      bool cartDataLoading,
      bool cartDeleteLoading,
      String? cartError,
      String? deleteCartError});
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object? cartValue = freezed,
    Object? cartDataLoading = freezed,
    Object? cartDeleteLoading = freezed,
    Object? cartError = freezed,
    Object? deleteCartError = freezed,
  }) {
    return _then(_CartState(
      cartValue: cartValue == freezed
          ? _value.cartValue
          : cartValue // ignore: cast_nullable_to_non_nullable
              as int,
      cartDataLoading: cartDataLoading == freezed
          ? _value.cartDataLoading
          : cartDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDeleteLoading: cartDeleteLoading == freezed
          ? _value.cartDeleteLoading
          : cartDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartError: cartError == freezed
          ? _value.cartError
          : cartError // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteCartError: deleteCartError == freezed
          ? _value.deleteCartError
          : deleteCartError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState(
      {this.cartValue = 0,
      this.cartDataLoading = false,
      this.cartDeleteLoading = false,
      this.cartError,
      this.deleteCartError});

  @JsonKey(defaultValue: 0)
  @override
  final int cartValue;
  @JsonKey(defaultValue: false)
  @override
  final bool cartDataLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool cartDeleteLoading;
  @override
  final String? cartError;
  @override
  final String? deleteCartError;

  @override
  String toString() {
    return 'CartState(cartValue: $cartValue, cartDataLoading: $cartDataLoading, cartDeleteLoading: $cartDeleteLoading, cartError: $cartError, deleteCartError: $deleteCartError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartState &&
            (identical(other.cartValue, cartValue) ||
                other.cartValue == cartValue) &&
            (identical(other.cartDataLoading, cartDataLoading) ||
                other.cartDataLoading == cartDataLoading) &&
            (identical(other.cartDeleteLoading, cartDeleteLoading) ||
                other.cartDeleteLoading == cartDeleteLoading) &&
            (identical(other.cartError, cartError) ||
                other.cartError == cartError) &&
            (identical(other.deleteCartError, deleteCartError) ||
                other.deleteCartError == deleteCartError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartValue, cartDataLoading,
      cartDeleteLoading, cartError, deleteCartError);

  @JsonKey(ignore: true)
  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {int cartValue,
      bool cartDataLoading,
      bool cartDeleteLoading,
      String? cartError,
      String? deleteCartError}) = _$_CartState;

  @override
  int get cartValue;
  @override
  bool get cartDataLoading;
  @override
  bool get cartDeleteLoading;
  @override
  String? get cartError;
  @override
  String? get deleteCartError;
  @override
  @JsonKey(ignore: true)
  _$CartStateCopyWith<_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'place_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceOrderStateTearOff {
  const _$PlaceOrderStateTearOff();

  Idle idle() {
    return const Idle();
  }

  OrderPlacedInProgress orderPlacedInProgress() {
    return const OrderPlacedInProgress();
  }

  OrderSuccessfullyPlaced orderSuccessfullyPlaced() {
    return const OrderSuccessfullyPlaced();
  }

  OrderNotPlaced orderNotPlaced(String message) {
    return OrderNotPlaced(
      message,
    );
  }
}

/// @nodoc
const $PlaceOrderState = _$PlaceOrderStateTearOff();

/// @nodoc
mixin _$PlaceOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() orderPlacedInProgress,
    required TResult Function() orderSuccessfullyPlaced,
    required TResult Function(String message) orderNotPlaced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? orderPlacedInProgress,
    TResult Function()? orderSuccessfullyPlaced,
    TResult Function(String message)? orderNotPlaced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(OrderPlacedInProgress value)
        orderPlacedInProgress,
    required TResult Function(OrderSuccessfullyPlaced value)
        orderSuccessfullyPlaced,
    required TResult Function(OrderNotPlaced value) orderNotPlaced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(OrderPlacedInProgress value)? orderPlacedInProgress,
    TResult Function(OrderSuccessfullyPlaced value)? orderSuccessfullyPlaced,
    TResult Function(OrderNotPlaced value)? orderNotPlaced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderStateCopyWith<$Res> {
  factory $PlaceOrderStateCopyWith(
          PlaceOrderState value, $Res Function(PlaceOrderState) then) =
      _$PlaceOrderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaceOrderStateCopyWithImpl<$Res>
    implements $PlaceOrderStateCopyWith<$Res> {
  _$PlaceOrderStateCopyWithImpl(this._value, this._then);

  final PlaceOrderState _value;
  // ignore: unused_field
  final $Res Function(PlaceOrderState) _then;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> extends _$PlaceOrderStateCopyWithImpl<$Res>
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
    return 'PlaceOrderState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() orderPlacedInProgress,
    required TResult Function() orderSuccessfullyPlaced,
    required TResult Function(String message) orderNotPlaced,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? orderPlacedInProgress,
    TResult Function()? orderSuccessfullyPlaced,
    TResult Function(String message)? orderNotPlaced,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(OrderPlacedInProgress value)
        orderPlacedInProgress,
    required TResult Function(OrderSuccessfullyPlaced value)
        orderSuccessfullyPlaced,
    required TResult Function(OrderNotPlaced value) orderNotPlaced,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(OrderPlacedInProgress value)? orderPlacedInProgress,
    TResult Function(OrderSuccessfullyPlaced value)? orderSuccessfullyPlaced,
    TResult Function(OrderNotPlaced value)? orderNotPlaced,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements PlaceOrderState {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class $OrderPlacedInProgressCopyWith<$Res> {
  factory $OrderPlacedInProgressCopyWith(OrderPlacedInProgress value,
          $Res Function(OrderPlacedInProgress) then) =
      _$OrderPlacedInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderPlacedInProgressCopyWithImpl<$Res>
    extends _$PlaceOrderStateCopyWithImpl<$Res>
    implements $OrderPlacedInProgressCopyWith<$Res> {
  _$OrderPlacedInProgressCopyWithImpl(
      OrderPlacedInProgress _value, $Res Function(OrderPlacedInProgress) _then)
      : super(_value, (v) => _then(v as OrderPlacedInProgress));

  @override
  OrderPlacedInProgress get _value => super._value as OrderPlacedInProgress;
}

/// @nodoc
class _$OrderPlacedInProgress implements OrderPlacedInProgress {
  const _$OrderPlacedInProgress();

  @override
  String toString() {
    return 'PlaceOrderState.orderPlacedInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OrderPlacedInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() orderPlacedInProgress,
    required TResult Function() orderSuccessfullyPlaced,
    required TResult Function(String message) orderNotPlaced,
  }) {
    return orderPlacedInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? orderPlacedInProgress,
    TResult Function()? orderSuccessfullyPlaced,
    TResult Function(String message)? orderNotPlaced,
    required TResult orElse(),
  }) {
    if (orderPlacedInProgress != null) {
      return orderPlacedInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(OrderPlacedInProgress value)
        orderPlacedInProgress,
    required TResult Function(OrderSuccessfullyPlaced value)
        orderSuccessfullyPlaced,
    required TResult Function(OrderNotPlaced value) orderNotPlaced,
  }) {
    return orderPlacedInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(OrderPlacedInProgress value)? orderPlacedInProgress,
    TResult Function(OrderSuccessfullyPlaced value)? orderSuccessfullyPlaced,
    TResult Function(OrderNotPlaced value)? orderNotPlaced,
    required TResult orElse(),
  }) {
    if (orderPlacedInProgress != null) {
      return orderPlacedInProgress(this);
    }
    return orElse();
  }
}

abstract class OrderPlacedInProgress implements PlaceOrderState {
  const factory OrderPlacedInProgress() = _$OrderPlacedInProgress;
}

/// @nodoc
abstract class $OrderSuccessfullyPlacedCopyWith<$Res> {
  factory $OrderSuccessfullyPlacedCopyWith(OrderSuccessfullyPlaced value,
          $Res Function(OrderSuccessfullyPlaced) then) =
      _$OrderSuccessfullyPlacedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderSuccessfullyPlacedCopyWithImpl<$Res>
    extends _$PlaceOrderStateCopyWithImpl<$Res>
    implements $OrderSuccessfullyPlacedCopyWith<$Res> {
  _$OrderSuccessfullyPlacedCopyWithImpl(OrderSuccessfullyPlaced _value,
      $Res Function(OrderSuccessfullyPlaced) _then)
      : super(_value, (v) => _then(v as OrderSuccessfullyPlaced));

  @override
  OrderSuccessfullyPlaced get _value => super._value as OrderSuccessfullyPlaced;
}

/// @nodoc
class _$OrderSuccessfullyPlaced implements OrderSuccessfullyPlaced {
  const _$OrderSuccessfullyPlaced();

  @override
  String toString() {
    return 'PlaceOrderState.orderSuccessfullyPlaced()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OrderSuccessfullyPlaced);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() orderPlacedInProgress,
    required TResult Function() orderSuccessfullyPlaced,
    required TResult Function(String message) orderNotPlaced,
  }) {
    return orderSuccessfullyPlaced();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? orderPlacedInProgress,
    TResult Function()? orderSuccessfullyPlaced,
    TResult Function(String message)? orderNotPlaced,
    required TResult orElse(),
  }) {
    if (orderSuccessfullyPlaced != null) {
      return orderSuccessfullyPlaced();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(OrderPlacedInProgress value)
        orderPlacedInProgress,
    required TResult Function(OrderSuccessfullyPlaced value)
        orderSuccessfullyPlaced,
    required TResult Function(OrderNotPlaced value) orderNotPlaced,
  }) {
    return orderSuccessfullyPlaced(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(OrderPlacedInProgress value)? orderPlacedInProgress,
    TResult Function(OrderSuccessfullyPlaced value)? orderSuccessfullyPlaced,
    TResult Function(OrderNotPlaced value)? orderNotPlaced,
    required TResult orElse(),
  }) {
    if (orderSuccessfullyPlaced != null) {
      return orderSuccessfullyPlaced(this);
    }
    return orElse();
  }
}

abstract class OrderSuccessfullyPlaced implements PlaceOrderState {
  const factory OrderSuccessfullyPlaced() = _$OrderSuccessfullyPlaced;
}

/// @nodoc
abstract class $OrderNotPlacedCopyWith<$Res> {
  factory $OrderNotPlacedCopyWith(
          OrderNotPlaced value, $Res Function(OrderNotPlaced) then) =
      _$OrderNotPlacedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$OrderNotPlacedCopyWithImpl<$Res>
    extends _$PlaceOrderStateCopyWithImpl<$Res>
    implements $OrderNotPlacedCopyWith<$Res> {
  _$OrderNotPlacedCopyWithImpl(
      OrderNotPlaced _value, $Res Function(OrderNotPlaced) _then)
      : super(_value, (v) => _then(v as OrderNotPlaced));

  @override
  OrderNotPlaced get _value => super._value as OrderNotPlaced;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(OrderNotPlaced(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$OrderNotPlaced implements OrderNotPlaced {
  const _$OrderNotPlaced(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PlaceOrderState.orderNotPlaced(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderNotPlaced &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $OrderNotPlacedCopyWith<OrderNotPlaced> get copyWith =>
      _$OrderNotPlacedCopyWithImpl<OrderNotPlaced>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() orderPlacedInProgress,
    required TResult Function() orderSuccessfullyPlaced,
    required TResult Function(String message) orderNotPlaced,
  }) {
    return orderNotPlaced(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? orderPlacedInProgress,
    TResult Function()? orderSuccessfullyPlaced,
    TResult Function(String message)? orderNotPlaced,
    required TResult orElse(),
  }) {
    if (orderNotPlaced != null) {
      return orderNotPlaced(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(OrderPlacedInProgress value)
        orderPlacedInProgress,
    required TResult Function(OrderSuccessfullyPlaced value)
        orderSuccessfullyPlaced,
    required TResult Function(OrderNotPlaced value) orderNotPlaced,
  }) {
    return orderNotPlaced(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(OrderPlacedInProgress value)? orderPlacedInProgress,
    TResult Function(OrderSuccessfullyPlaced value)? orderSuccessfullyPlaced,
    TResult Function(OrderNotPlaced value)? orderNotPlaced,
    required TResult orElse(),
  }) {
    if (orderNotPlaced != null) {
      return orderNotPlaced(this);
    }
    return orElse();
  }
}

abstract class OrderNotPlaced implements PlaceOrderState {
  const factory OrderNotPlaced(String message) = _$OrderNotPlaced;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderNotPlacedCopyWith<OrderNotPlaced> get copyWith =>
      throw _privateConstructorUsedError;
}

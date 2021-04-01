// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'place_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlaceOrderStateTearOff {
  const _$PlaceOrderStateTearOff();

// ignore: unused_element
  Idle idle() {
    return const Idle();
  }

// ignore: unused_element
  OrderPlacedInProgress orderPlacedInProgress() {
    return const OrderPlacedInProgress();
  }

// ignore: unused_element
  OrderSuccessfullyPlaced orderSuccessfullyPlaced() {
    return const OrderSuccessfullyPlaced();
  }

// ignore: unused_element
  OrderNotPlaced orderNotPlaced(String message) {
    return OrderNotPlaced(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PlaceOrderState = _$PlaceOrderStateTearOff();

/// @nodoc
mixin _$PlaceOrderState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result orderPlacedInProgress(),
    @required Result orderSuccessfullyPlaced(),
    @required Result orderNotPlaced(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result orderPlacedInProgress(),
    Result orderSuccessfullyPlaced(),
    Result orderNotPlaced(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result orderPlacedInProgress(OrderPlacedInProgress value),
    @required Result orderSuccessfullyPlaced(OrderSuccessfullyPlaced value),
    @required Result orderNotPlaced(OrderNotPlaced value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result orderPlacedInProgress(OrderPlacedInProgress value),
    Result orderSuccessfullyPlaced(OrderSuccessfullyPlaced value),
    Result orderNotPlaced(OrderNotPlaced value),
    @required Result orElse(),
  });
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
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result orderPlacedInProgress(),
    @required Result orderSuccessfullyPlaced(),
    @required Result orderNotPlaced(String message),
  }) {
    assert(idle != null);
    assert(orderPlacedInProgress != null);
    assert(orderSuccessfullyPlaced != null);
    assert(orderNotPlaced != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result orderPlacedInProgress(),
    Result orderSuccessfullyPlaced(),
    Result orderNotPlaced(String message),
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
    @required Result orderPlacedInProgress(OrderPlacedInProgress value),
    @required Result orderSuccessfullyPlaced(OrderSuccessfullyPlaced value),
    @required Result orderNotPlaced(OrderNotPlaced value),
  }) {
    assert(idle != null);
    assert(orderPlacedInProgress != null);
    assert(orderSuccessfullyPlaced != null);
    assert(orderNotPlaced != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result orderPlacedInProgress(OrderPlacedInProgress value),
    Result orderSuccessfullyPlaced(OrderSuccessfullyPlaced value),
    Result orderNotPlaced(OrderNotPlaced value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result orderPlacedInProgress(),
    @required Result orderSuccessfullyPlaced(),
    @required Result orderNotPlaced(String message),
  }) {
    assert(idle != null);
    assert(orderPlacedInProgress != null);
    assert(orderSuccessfullyPlaced != null);
    assert(orderNotPlaced != null);
    return orderPlacedInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result orderPlacedInProgress(),
    Result orderSuccessfullyPlaced(),
    Result orderNotPlaced(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orderPlacedInProgress != null) {
      return orderPlacedInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result orderPlacedInProgress(OrderPlacedInProgress value),
    @required Result orderSuccessfullyPlaced(OrderSuccessfullyPlaced value),
    @required Result orderNotPlaced(OrderNotPlaced value),
  }) {
    assert(idle != null);
    assert(orderPlacedInProgress != null);
    assert(orderSuccessfullyPlaced != null);
    assert(orderNotPlaced != null);
    return orderPlacedInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result orderPlacedInProgress(OrderPlacedInProgress value),
    Result orderSuccessfullyPlaced(OrderSuccessfullyPlaced value),
    Result orderNotPlaced(OrderNotPlaced value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result orderPlacedInProgress(),
    @required Result orderSuccessfullyPlaced(),
    @required Result orderNotPlaced(String message),
  }) {
    assert(idle != null);
    assert(orderPlacedInProgress != null);
    assert(orderSuccessfullyPlaced != null);
    assert(orderNotPlaced != null);
    return orderSuccessfullyPlaced();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result orderPlacedInProgress(),
    Result orderSuccessfullyPlaced(),
    Result orderNotPlaced(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orderSuccessfullyPlaced != null) {
      return orderSuccessfullyPlaced();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result orderPlacedInProgress(OrderPlacedInProgress value),
    @required Result orderSuccessfullyPlaced(OrderSuccessfullyPlaced value),
    @required Result orderNotPlaced(OrderNotPlaced value),
  }) {
    assert(idle != null);
    assert(orderPlacedInProgress != null);
    assert(orderSuccessfullyPlaced != null);
    assert(orderNotPlaced != null);
    return orderSuccessfullyPlaced(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result orderPlacedInProgress(OrderPlacedInProgress value),
    Result orderSuccessfullyPlaced(OrderSuccessfullyPlaced value),
    Result orderNotPlaced(OrderNotPlaced value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
    Object message = freezed,
  }) {
    return _then(OrderNotPlaced(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$OrderNotPlaced implements OrderNotPlaced {
  const _$OrderNotPlaced(this.message) : assert(message != null);

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

  @override
  $OrderNotPlacedCopyWith<OrderNotPlaced> get copyWith =>
      _$OrderNotPlacedCopyWithImpl<OrderNotPlaced>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result orderPlacedInProgress(),
    @required Result orderSuccessfullyPlaced(),
    @required Result orderNotPlaced(String message),
  }) {
    assert(idle != null);
    assert(orderPlacedInProgress != null);
    assert(orderSuccessfullyPlaced != null);
    assert(orderNotPlaced != null);
    return orderNotPlaced(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result orderPlacedInProgress(),
    Result orderSuccessfullyPlaced(),
    Result orderNotPlaced(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orderNotPlaced != null) {
      return orderNotPlaced(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result orderPlacedInProgress(OrderPlacedInProgress value),
    @required Result orderSuccessfullyPlaced(OrderSuccessfullyPlaced value),
    @required Result orderNotPlaced(OrderNotPlaced value),
  }) {
    assert(idle != null);
    assert(orderPlacedInProgress != null);
    assert(orderSuccessfullyPlaced != null);
    assert(orderNotPlaced != null);
    return orderNotPlaced(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result orderPlacedInProgress(OrderPlacedInProgress value),
    Result orderSuccessfullyPlaced(OrderSuccessfullyPlaced value),
    Result orderNotPlaced(OrderNotPlaced value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orderNotPlaced != null) {
      return orderNotPlaced(this);
    }
    return orElse();
  }
}

abstract class OrderNotPlaced implements PlaceOrderState {
  const factory OrderNotPlaced(String message) = _$OrderNotPlaced;

  String get message;
  $OrderNotPlacedCopyWith<OrderNotPlaced> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

// ignore: unused_element
  Idle idle() {
    return const Idle();
  }

// ignore: unused_element
  PaymentButtonLoading paymentButtonLoading() {
    return const PaymentButtonLoading();
  }

// ignore: unused_element
  PaymentError paymentError(String errorMessage) {
    return PaymentError(
      errorMessage,
    );
  }

// ignore: unused_element
  PaymentSuccessful paymentSuccessful(PaymentSuccessResponse response) {
    return PaymentSuccessful(
      response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result paymentButtonLoading(),
    @required Result paymentError(String errorMessage),
    @required Result paymentSuccessful(PaymentSuccessResponse response),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result paymentButtonLoading(),
    Result paymentError(String errorMessage),
    Result paymentSuccessful(PaymentSuccessResponse response),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result paymentButtonLoading(PaymentButtonLoading value),
    @required Result paymentError(PaymentError value),
    @required Result paymentSuccessful(PaymentSuccessful value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result paymentButtonLoading(PaymentButtonLoading value),
    Result paymentError(PaymentError value),
    Result paymentSuccessful(PaymentSuccessful value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
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
    return 'PaymentState.idle()';
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
    @required Result paymentButtonLoading(),
    @required Result paymentError(String errorMessage),
    @required Result paymentSuccessful(PaymentSuccessResponse response),
  }) {
    assert(idle != null);
    assert(paymentButtonLoading != null);
    assert(paymentError != null);
    assert(paymentSuccessful != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result paymentButtonLoading(),
    Result paymentError(String errorMessage),
    Result paymentSuccessful(PaymentSuccessResponse response),
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
    @required Result paymentButtonLoading(PaymentButtonLoading value),
    @required Result paymentError(PaymentError value),
    @required Result paymentSuccessful(PaymentSuccessful value),
  }) {
    assert(idle != null);
    assert(paymentButtonLoading != null);
    assert(paymentError != null);
    assert(paymentSuccessful != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result paymentButtonLoading(PaymentButtonLoading value),
    Result paymentError(PaymentError value),
    Result paymentSuccessful(PaymentSuccessful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements PaymentState {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class $PaymentButtonLoadingCopyWith<$Res> {
  factory $PaymentButtonLoadingCopyWith(PaymentButtonLoading value,
          $Res Function(PaymentButtonLoading) then) =
      _$PaymentButtonLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentButtonLoadingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentButtonLoadingCopyWith<$Res> {
  _$PaymentButtonLoadingCopyWithImpl(
      PaymentButtonLoading _value, $Res Function(PaymentButtonLoading) _then)
      : super(_value, (v) => _then(v as PaymentButtonLoading));

  @override
  PaymentButtonLoading get _value => super._value as PaymentButtonLoading;
}

/// @nodoc
class _$PaymentButtonLoading implements PaymentButtonLoading {
  const _$PaymentButtonLoading();

  @override
  String toString() {
    return 'PaymentState.paymentButtonLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PaymentButtonLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result paymentButtonLoading(),
    @required Result paymentError(String errorMessage),
    @required Result paymentSuccessful(PaymentSuccessResponse response),
  }) {
    assert(idle != null);
    assert(paymentButtonLoading != null);
    assert(paymentError != null);
    assert(paymentSuccessful != null);
    return paymentButtonLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result paymentButtonLoading(),
    Result paymentError(String errorMessage),
    Result paymentSuccessful(PaymentSuccessResponse response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentButtonLoading != null) {
      return paymentButtonLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result paymentButtonLoading(PaymentButtonLoading value),
    @required Result paymentError(PaymentError value),
    @required Result paymentSuccessful(PaymentSuccessful value),
  }) {
    assert(idle != null);
    assert(paymentButtonLoading != null);
    assert(paymentError != null);
    assert(paymentSuccessful != null);
    return paymentButtonLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result paymentButtonLoading(PaymentButtonLoading value),
    Result paymentError(PaymentError value),
    Result paymentSuccessful(PaymentSuccessful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentButtonLoading != null) {
      return paymentButtonLoading(this);
    }
    return orElse();
  }
}

abstract class PaymentButtonLoading implements PaymentState {
  const factory PaymentButtonLoading() = _$PaymentButtonLoading;
}

/// @nodoc
abstract class $PaymentErrorCopyWith<$Res> {
  factory $PaymentErrorCopyWith(
          PaymentError value, $Res Function(PaymentError) then) =
      _$PaymentErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$PaymentErrorCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentErrorCopyWith<$Res> {
  _$PaymentErrorCopyWithImpl(
      PaymentError _value, $Res Function(PaymentError) _then)
      : super(_value, (v) => _then(v as PaymentError));

  @override
  PaymentError get _value => super._value as PaymentError;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(PaymentError(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$PaymentError implements PaymentError {
  const _$PaymentError(this.errorMessage) : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PaymentState.paymentError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  $PaymentErrorCopyWith<PaymentError> get copyWith =>
      _$PaymentErrorCopyWithImpl<PaymentError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result paymentButtonLoading(),
    @required Result paymentError(String errorMessage),
    @required Result paymentSuccessful(PaymentSuccessResponse response),
  }) {
    assert(idle != null);
    assert(paymentButtonLoading != null);
    assert(paymentError != null);
    assert(paymentSuccessful != null);
    return paymentError(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result paymentButtonLoading(),
    Result paymentError(String errorMessage),
    Result paymentSuccessful(PaymentSuccessResponse response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentError != null) {
      return paymentError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result paymentButtonLoading(PaymentButtonLoading value),
    @required Result paymentError(PaymentError value),
    @required Result paymentSuccessful(PaymentSuccessful value),
  }) {
    assert(idle != null);
    assert(paymentButtonLoading != null);
    assert(paymentError != null);
    assert(paymentSuccessful != null);
    return paymentError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result paymentButtonLoading(PaymentButtonLoading value),
    Result paymentError(PaymentError value),
    Result paymentSuccessful(PaymentSuccessful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentError != null) {
      return paymentError(this);
    }
    return orElse();
  }
}

abstract class PaymentError implements PaymentState {
  const factory PaymentError(String errorMessage) = _$PaymentError;

  String get errorMessage;
  $PaymentErrorCopyWith<PaymentError> get copyWith;
}

/// @nodoc
abstract class $PaymentSuccessfulCopyWith<$Res> {
  factory $PaymentSuccessfulCopyWith(
          PaymentSuccessful value, $Res Function(PaymentSuccessful) then) =
      _$PaymentSuccessfulCopyWithImpl<$Res>;
  $Res call({PaymentSuccessResponse response});
}

/// @nodoc
class _$PaymentSuccessfulCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentSuccessfulCopyWith<$Res> {
  _$PaymentSuccessfulCopyWithImpl(
      PaymentSuccessful _value, $Res Function(PaymentSuccessful) _then)
      : super(_value, (v) => _then(v as PaymentSuccessful));

  @override
  PaymentSuccessful get _value => super._value as PaymentSuccessful;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(PaymentSuccessful(
      response == freezed
          ? _value.response
          : response as PaymentSuccessResponse,
    ));
  }
}

/// @nodoc
class _$PaymentSuccessful implements PaymentSuccessful {
  const _$PaymentSuccessful(this.response) : assert(response != null);

  @override
  final PaymentSuccessResponse response;

  @override
  String toString() {
    return 'PaymentState.paymentSuccessful(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentSuccessful &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $PaymentSuccessfulCopyWith<PaymentSuccessful> get copyWith =>
      _$PaymentSuccessfulCopyWithImpl<PaymentSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result paymentButtonLoading(),
    @required Result paymentError(String errorMessage),
    @required Result paymentSuccessful(PaymentSuccessResponse response),
  }) {
    assert(idle != null);
    assert(paymentButtonLoading != null);
    assert(paymentError != null);
    assert(paymentSuccessful != null);
    return paymentSuccessful(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result paymentButtonLoading(),
    Result paymentError(String errorMessage),
    Result paymentSuccessful(PaymentSuccessResponse response),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentSuccessful != null) {
      return paymentSuccessful(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result paymentButtonLoading(PaymentButtonLoading value),
    @required Result paymentError(PaymentError value),
    @required Result paymentSuccessful(PaymentSuccessful value),
  }) {
    assert(idle != null);
    assert(paymentButtonLoading != null);
    assert(paymentError != null);
    assert(paymentSuccessful != null);
    return paymentSuccessful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result paymentButtonLoading(PaymentButtonLoading value),
    Result paymentError(PaymentError value),
    Result paymentSuccessful(PaymentSuccessful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentSuccessful != null) {
      return paymentSuccessful(this);
    }
    return orElse();
  }
}

abstract class PaymentSuccessful implements PaymentState {
  const factory PaymentSuccessful(PaymentSuccessResponse response) =
      _$PaymentSuccessful;

  PaymentSuccessResponse get response;
  $PaymentSuccessfulCopyWith<PaymentSuccessful> get copyWith;
}

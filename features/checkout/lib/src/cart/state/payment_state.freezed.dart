// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

  Idle idle() {
    return const Idle();
  }

  PaymentButtonLoading paymentButtonLoading() {
    return const PaymentButtonLoading();
  }

  PaymentError paymentError(String errorMessage) {
    return PaymentError(
      errorMessage,
    );
  }

  PaymentSuccessful paymentSuccessful(String response) {
    return PaymentSuccessful(
      response,
    );
  }
}

/// @nodoc
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() paymentButtonLoading,
    required TResult Function(String errorMessage) paymentError,
    required TResult Function(String response) paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? paymentButtonLoading,
    TResult Function(String errorMessage)? paymentError,
    TResult Function(String response)? paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? paymentButtonLoading,
    TResult Function(String errorMessage)? paymentError,
    TResult Function(String response)? paymentSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(PaymentButtonLoading value) paymentButtonLoading,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() paymentButtonLoading,
    required TResult Function(String errorMessage) paymentError,
    required TResult Function(String response) paymentSuccessful,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? paymentButtonLoading,
    TResult Function(String errorMessage)? paymentError,
    TResult Function(String response)? paymentSuccessful,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? paymentButtonLoading,
    TResult Function(String errorMessage)? paymentError,
    TResult Function(String response)? paymentSuccessful,
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
    required TResult Function(PaymentButtonLoading value) paymentButtonLoading,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) {
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentButtonLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() paymentButtonLoading,
    required TResult Function(String errorMessage) paymentError,
    required TResult Function(String response) paymentSuccessful,
  }) {
    return paymentButtonLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? paymentButtonLoading,
    TResult Function(String errorMessage)? paymentError,
    TResult Function(String response)? paymentSuccessful,
  }) {
    return paymentButtonLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? paymentButtonLoading,
    TResult Function(String errorMessage)? paymentError,
    TResult Function(String response)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (paymentButtonLoading != null) {
      return paymentButtonLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(PaymentButtonLoading value) paymentButtonLoading,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) {
    return paymentButtonLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) {
    return paymentButtonLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) {
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
    Object? errorMessage = freezed,
  }) {
    return _then(PaymentError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentError implements PaymentError {
  const _$PaymentError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PaymentState.paymentError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  $PaymentErrorCopyWith<PaymentError> get copyWith =>
      _$PaymentErrorCopyWithImpl<PaymentError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() paymentButtonLoading,
    required TResult Function(String errorMessage) paymentError,
    required TResult Function(String response) paymentSuccessful,
  }) {
    return paymentError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? paymentButtonLoading,
    TResult Function(String errorMessage)? paymentError,
    TResult Function(String response)? paymentSuccessful,
  }) {
    return paymentError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? paymentButtonLoading,
    TResult Function(String errorMessage)? paymentError,
    TResult Function(String response)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (paymentError != null) {
      return paymentError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(PaymentButtonLoading value) paymentButtonLoading,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) {
    return paymentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) {
    return paymentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (paymentError != null) {
      return paymentError(this);
    }
    return orElse();
  }
}

abstract class PaymentError implements PaymentState {
  const factory PaymentError(String errorMessage) = _$PaymentError;

  String get errorMessage;
  @JsonKey(ignore: true)
  $PaymentErrorCopyWith<PaymentError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentSuccessfulCopyWith<$Res> {
  factory $PaymentSuccessfulCopyWith(
          PaymentSuccessful value, $Res Function(PaymentSuccessful) then) =
      _$PaymentSuccessfulCopyWithImpl<$Res>;
  $Res call({String response});
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
    Object? response = freezed,
  }) {
    return _then(PaymentSuccessful(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentSuccessful implements PaymentSuccessful {
  const _$PaymentSuccessful(this.response);

  @override
  final String response;

  @override
  String toString() {
    return 'PaymentState.paymentSuccessful(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentSuccessful &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  $PaymentSuccessfulCopyWith<PaymentSuccessful> get copyWith =>
      _$PaymentSuccessfulCopyWithImpl<PaymentSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() paymentButtonLoading,
    required TResult Function(String errorMessage) paymentError,
    required TResult Function(String response) paymentSuccessful,
  }) {
    return paymentSuccessful(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? paymentButtonLoading,
    TResult Function(String errorMessage)? paymentError,
    TResult Function(String response)? paymentSuccessful,
  }) {
    return paymentSuccessful?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? paymentButtonLoading,
    TResult Function(String errorMessage)? paymentError,
    TResult Function(String response)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (paymentSuccessful != null) {
      return paymentSuccessful(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(PaymentButtonLoading value) paymentButtonLoading,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(PaymentSuccessful value) paymentSuccessful,
  }) {
    return paymentSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
  }) {
    return paymentSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(PaymentSuccessful value)? paymentSuccessful,
    required TResult orElse(),
  }) {
    if (paymentSuccessful != null) {
      return paymentSuccessful(this);
    }
    return orElse();
  }
}

abstract class PaymentSuccessful implements PaymentState {
  const factory PaymentSuccessful(String response) = _$PaymentSuccessful;

  String get response;
  @JsonKey(ignore: true)
  $PaymentSuccessfulCopyWith<PaymentSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

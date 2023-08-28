// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function()? idle,
    TResult? Function()? paymentButtonLoading,
    TResult? Function(String errorMessage)? paymentError,
    TResult? Function(String response)? paymentSuccessful,
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
    TResult? Function(Idle value)? idle,
    TResult? Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult? Function(PaymentError value)? paymentError,
    TResult? Function(PaymentSuccessful value)? paymentSuccessful,
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
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleCopyWith<$Res> {
  factory _$$IdleCopyWith(_$Idle value, $Res Function(_$Idle) then) =
      __$$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$Idle>
    implements _$$IdleCopyWith<$Res> {
  __$$IdleCopyWithImpl(_$Idle _value, $Res Function(_$Idle) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$Idle);
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
    TResult? Function()? idle,
    TResult? Function()? paymentButtonLoading,
    TResult? Function(String errorMessage)? paymentError,
    TResult? Function(String response)? paymentSuccessful,
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
    TResult? Function(Idle value)? idle,
    TResult? Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult? Function(PaymentError value)? paymentError,
    TResult? Function(PaymentSuccessful value)? paymentSuccessful,
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
abstract class _$$PaymentButtonLoadingCopyWith<$Res> {
  factory _$$PaymentButtonLoadingCopyWith(_$PaymentButtonLoading value,
          $Res Function(_$PaymentButtonLoading) then) =
      __$$PaymentButtonLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentButtonLoadingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentButtonLoading>
    implements _$$PaymentButtonLoadingCopyWith<$Res> {
  __$$PaymentButtonLoadingCopyWithImpl(_$PaymentButtonLoading _value,
      $Res Function(_$PaymentButtonLoading) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$PaymentButtonLoading);
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
    TResult? Function()? idle,
    TResult? Function()? paymentButtonLoading,
    TResult? Function(String errorMessage)? paymentError,
    TResult? Function(String response)? paymentSuccessful,
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
    TResult? Function(Idle value)? idle,
    TResult? Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult? Function(PaymentError value)? paymentError,
    TResult? Function(PaymentSuccessful value)? paymentSuccessful,
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
abstract class _$$PaymentErrorCopyWith<$Res> {
  factory _$$PaymentErrorCopyWith(
          _$PaymentError value, $Res Function(_$PaymentError) then) =
      __$$PaymentErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$PaymentErrorCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentError>
    implements _$$PaymentErrorCopyWith<$Res> {
  __$$PaymentErrorCopyWithImpl(
      _$PaymentError _value, $Res Function(_$PaymentError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$PaymentError(
      null == errorMessage
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
            other is _$PaymentError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentErrorCopyWith<_$PaymentError> get copyWith =>
      __$$PaymentErrorCopyWithImpl<_$PaymentError>(this, _$identity);

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
    TResult? Function()? idle,
    TResult? Function()? paymentButtonLoading,
    TResult? Function(String errorMessage)? paymentError,
    TResult? Function(String response)? paymentSuccessful,
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
    TResult? Function(Idle value)? idle,
    TResult? Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult? Function(PaymentError value)? paymentError,
    TResult? Function(PaymentSuccessful value)? paymentSuccessful,
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
  const factory PaymentError(final String errorMessage) = _$PaymentError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$PaymentErrorCopyWith<_$PaymentError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentSuccessfulCopyWith<$Res> {
  factory _$$PaymentSuccessfulCopyWith(
          _$PaymentSuccessful value, $Res Function(_$PaymentSuccessful) then) =
      __$$PaymentSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({String response});
}

/// @nodoc
class __$$PaymentSuccessfulCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentSuccessful>
    implements _$$PaymentSuccessfulCopyWith<$Res> {
  __$$PaymentSuccessfulCopyWithImpl(
      _$PaymentSuccessful _value, $Res Function(_$PaymentSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$PaymentSuccessful(
      null == response
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
            other is _$PaymentSuccessful &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSuccessfulCopyWith<_$PaymentSuccessful> get copyWith =>
      __$$PaymentSuccessfulCopyWithImpl<_$PaymentSuccessful>(this, _$identity);

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
    TResult? Function()? idle,
    TResult? Function()? paymentButtonLoading,
    TResult? Function(String errorMessage)? paymentError,
    TResult? Function(String response)? paymentSuccessful,
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
    TResult? Function(Idle value)? idle,
    TResult? Function(PaymentButtonLoading value)? paymentButtonLoading,
    TResult? Function(PaymentError value)? paymentError,
    TResult? Function(PaymentSuccessful value)? paymentSuccessful,
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
  const factory PaymentSuccessful(final String response) = _$PaymentSuccessful;

  String get response;
  @JsonKey(ignore: true)
  _$$PaymentSuccessfulCopyWith<_$PaymentSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

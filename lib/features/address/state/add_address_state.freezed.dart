// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddAddressStateTearOff {
  const _$AddAddressStateTearOff();

  Idle idle() {
    return const Idle();
  }

  ButtonLoading buttonLoading() {
    return const ButtonLoading();
  }

  AddressCardError error(String message) {
    return AddressCardError(
      message,
    );
  }

  Successful successful() {
    return const Successful();
  }
}

/// @nodoc
const $AddAddressState = _$AddAddressStateTearOff();

/// @nodoc
mixin _$AddAddressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() buttonLoading,
    required TResult Function(String message) error,
    required TResult Function() successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? buttonLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? buttonLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(ButtonLoading value) buttonLoading,
    required TResult Function(AddressCardError value) error,
    required TResult Function(Successful value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(ButtonLoading value)? buttonLoading,
    TResult Function(AddressCardError value)? error,
    TResult Function(Successful value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(ButtonLoading value)? buttonLoading,
    TResult Function(AddressCardError value)? error,
    TResult Function(Successful value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAddressStateCopyWith<$Res> {
  factory $AddAddressStateCopyWith(
          AddAddressState value, $Res Function(AddAddressState) then) =
      _$AddAddressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddAddressStateCopyWithImpl<$Res>
    implements $AddAddressStateCopyWith<$Res> {
  _$AddAddressStateCopyWithImpl(this._value, this._then);

  final AddAddressState _value;
  // ignore: unused_field
  final $Res Function(AddAddressState) _then;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> extends _$AddAddressStateCopyWithImpl<$Res>
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
    return 'AddAddressState.idle()';
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
    required TResult Function() buttonLoading,
    required TResult Function(String message) error,
    required TResult Function() successful,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? buttonLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? buttonLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
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
    required TResult Function(ButtonLoading value) buttonLoading,
    required TResult Function(AddressCardError value) error,
    required TResult Function(Successful value) successful,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(ButtonLoading value)? buttonLoading,
    TResult Function(AddressCardError value)? error,
    TResult Function(Successful value)? successful,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(ButtonLoading value)? buttonLoading,
    TResult Function(AddressCardError value)? error,
    TResult Function(Successful value)? successful,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements AddAddressState {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class $ButtonLoadingCopyWith<$Res> {
  factory $ButtonLoadingCopyWith(
          ButtonLoading value, $Res Function(ButtonLoading) then) =
      _$ButtonLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ButtonLoadingCopyWithImpl<$Res>
    extends _$AddAddressStateCopyWithImpl<$Res>
    implements $ButtonLoadingCopyWith<$Res> {
  _$ButtonLoadingCopyWithImpl(
      ButtonLoading _value, $Res Function(ButtonLoading) _then)
      : super(_value, (v) => _then(v as ButtonLoading));

  @override
  ButtonLoading get _value => super._value as ButtonLoading;
}

/// @nodoc

class _$ButtonLoading implements ButtonLoading {
  const _$ButtonLoading();

  @override
  String toString() {
    return 'AddAddressState.buttonLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ButtonLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() buttonLoading,
    required TResult Function(String message) error,
    required TResult Function() successful,
  }) {
    return buttonLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? buttonLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
  }) {
    return buttonLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? buttonLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
    required TResult orElse(),
  }) {
    if (buttonLoading != null) {
      return buttonLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(ButtonLoading value) buttonLoading,
    required TResult Function(AddressCardError value) error,
    required TResult Function(Successful value) successful,
  }) {
    return buttonLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(ButtonLoading value)? buttonLoading,
    TResult Function(AddressCardError value)? error,
    TResult Function(Successful value)? successful,
  }) {
    return buttonLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(ButtonLoading value)? buttonLoading,
    TResult Function(AddressCardError value)? error,
    TResult Function(Successful value)? successful,
    required TResult orElse(),
  }) {
    if (buttonLoading != null) {
      return buttonLoading(this);
    }
    return orElse();
  }
}

abstract class ButtonLoading implements AddAddressState {
  const factory ButtonLoading() = _$ButtonLoading;
}

/// @nodoc
abstract class $AddressCardErrorCopyWith<$Res> {
  factory $AddressCardErrorCopyWith(
          AddressCardError value, $Res Function(AddressCardError) then) =
      _$AddressCardErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AddressCardErrorCopyWithImpl<$Res>
    extends _$AddAddressStateCopyWithImpl<$Res>
    implements $AddressCardErrorCopyWith<$Res> {
  _$AddressCardErrorCopyWithImpl(
      AddressCardError _value, $Res Function(AddressCardError) _then)
      : super(_value, (v) => _then(v as AddressCardError));

  @override
  AddressCardError get _value => super._value as AddressCardError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AddressCardError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressCardError implements AddressCardError {
  const _$AddressCardError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddAddressState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressCardError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $AddressCardErrorCopyWith<AddressCardError> get copyWith =>
      _$AddressCardErrorCopyWithImpl<AddressCardError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() buttonLoading,
    required TResult Function(String message) error,
    required TResult Function() successful,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? buttonLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? buttonLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(ButtonLoading value) buttonLoading,
    required TResult Function(AddressCardError value) error,
    required TResult Function(Successful value) successful,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(ButtonLoading value)? buttonLoading,
    TResult Function(AddressCardError value)? error,
    TResult Function(Successful value)? successful,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(ButtonLoading value)? buttonLoading,
    TResult Function(AddressCardError value)? error,
    TResult Function(Successful value)? successful,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddressCardError implements AddAddressState {
  const factory AddressCardError(String message) = _$AddressCardError;

  String get message;
  @JsonKey(ignore: true)
  $AddressCardErrorCopyWith<AddressCardError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessfulCopyWith<$Res> {
  factory $SuccessfulCopyWith(
          Successful value, $Res Function(Successful) then) =
      _$SuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessfulCopyWithImpl<$Res> extends _$AddAddressStateCopyWithImpl<$Res>
    implements $SuccessfulCopyWith<$Res> {
  _$SuccessfulCopyWithImpl(Successful _value, $Res Function(Successful) _then)
      : super(_value, (v) => _then(v as Successful));

  @override
  Successful get _value => super._value as Successful;
}

/// @nodoc

class _$Successful implements Successful {
  const _$Successful();

  @override
  String toString() {
    return 'AddAddressState.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Successful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() buttonLoading,
    required TResult Function(String message) error,
    required TResult Function() successful,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? buttonLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? buttonLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(ButtonLoading value) buttonLoading,
    required TResult Function(AddressCardError value) error,
    required TResult Function(Successful value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(ButtonLoading value)? buttonLoading,
    TResult Function(AddressCardError value)? error,
    TResult Function(Successful value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(ButtonLoading value)? buttonLoading,
    TResult Function(AddressCardError value)? error,
    TResult Function(Successful value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class Successful implements AddAddressState {
  const factory Successful() = _$Successful;
}

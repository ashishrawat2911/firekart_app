// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'address_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddressCardStateTearOff {
  const _$AddressCardStateTearOff();

  Idle idle() {
    return const Idle();
  }

  EditLoading editLoading() {
    return const EditLoading();
  }

  SetDefaultLoading setDefaultLoading() {
    return const SetDefaultLoading();
  }

  Error error(String message) {
    return Error(
      message,
    );
  }

  SuccessfulSaved successful() {
    return const SuccessfulSaved();
  }
}

/// @nodoc
const $AddressCardState = _$AddressCardStateTearOff();

/// @nodoc
mixin _$AddressCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() editLoading,
    required TResult Function() setDefaultLoading,
    required TResult Function(String message) error,
    required TResult Function() successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? editLoading,
    TResult Function()? setDefaultLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(EditLoading value) editLoading,
    required TResult Function(SetDefaultLoading value) setDefaultLoading,
    required TResult Function(Error value) error,
    required TResult Function(SuccessfulSaved value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(EditLoading value)? editLoading,
    TResult Function(SetDefaultLoading value)? setDefaultLoading,
    TResult Function(Error value)? error,
    TResult Function(SuccessfulSaved value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCardStateCopyWith<$Res> {
  factory $AddressCardStateCopyWith(
          AddressCardState value, $Res Function(AddressCardState) then) =
      _$AddressCardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressCardStateCopyWithImpl<$Res>
    implements $AddressCardStateCopyWith<$Res> {
  _$AddressCardStateCopyWithImpl(this._value, this._then);

  final AddressCardState _value;
  // ignore: unused_field
  final $Res Function(AddressCardState) _then;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> extends _$AddressCardStateCopyWithImpl<$Res>
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
    return 'AddressCardState.idle()';
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
    required TResult Function() editLoading,
    required TResult Function() setDefaultLoading,
    required TResult Function(String message) error,
    required TResult Function() successful,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? editLoading,
    TResult Function()? setDefaultLoading,
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
    required TResult Function(EditLoading value) editLoading,
    required TResult Function(SetDefaultLoading value) setDefaultLoading,
    required TResult Function(Error value) error,
    required TResult Function(SuccessfulSaved value) successful,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(EditLoading value)? editLoading,
    TResult Function(SetDefaultLoading value)? setDefaultLoading,
    TResult Function(Error value)? error,
    TResult Function(SuccessfulSaved value)? successful,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements AddressCardState {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class $EditLoadingCopyWith<$Res> {
  factory $EditLoadingCopyWith(
          EditLoading value, $Res Function(EditLoading) then) =
      _$EditLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditLoadingCopyWithImpl<$Res>
    extends _$AddressCardStateCopyWithImpl<$Res>
    implements $EditLoadingCopyWith<$Res> {
  _$EditLoadingCopyWithImpl(
      EditLoading _value, $Res Function(EditLoading) _then)
      : super(_value, (v) => _then(v as EditLoading));

  @override
  EditLoading get _value => super._value as EditLoading;
}

/// @nodoc
class _$EditLoading implements EditLoading {
  const _$EditLoading();

  @override
  String toString() {
    return 'AddressCardState.editLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() editLoading,
    required TResult Function() setDefaultLoading,
    required TResult Function(String message) error,
    required TResult Function() successful,
  }) {
    return editLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? editLoading,
    TResult Function()? setDefaultLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
    required TResult orElse(),
  }) {
    if (editLoading != null) {
      return editLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(EditLoading value) editLoading,
    required TResult Function(SetDefaultLoading value) setDefaultLoading,
    required TResult Function(Error value) error,
    required TResult Function(SuccessfulSaved value) successful,
  }) {
    return editLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(EditLoading value)? editLoading,
    TResult Function(SetDefaultLoading value)? setDefaultLoading,
    TResult Function(Error value)? error,
    TResult Function(SuccessfulSaved value)? successful,
    required TResult orElse(),
  }) {
    if (editLoading != null) {
      return editLoading(this);
    }
    return orElse();
  }
}

abstract class EditLoading implements AddressCardState {
  const factory EditLoading() = _$EditLoading;
}

/// @nodoc
abstract class $SetDefaultLoadingCopyWith<$Res> {
  factory $SetDefaultLoadingCopyWith(
          SetDefaultLoading value, $Res Function(SetDefaultLoading) then) =
      _$SetDefaultLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetDefaultLoadingCopyWithImpl<$Res>
    extends _$AddressCardStateCopyWithImpl<$Res>
    implements $SetDefaultLoadingCopyWith<$Res> {
  _$SetDefaultLoadingCopyWithImpl(
      SetDefaultLoading _value, $Res Function(SetDefaultLoading) _then)
      : super(_value, (v) => _then(v as SetDefaultLoading));

  @override
  SetDefaultLoading get _value => super._value as SetDefaultLoading;
}

/// @nodoc
class _$SetDefaultLoading implements SetDefaultLoading {
  const _$SetDefaultLoading();

  @override
  String toString() {
    return 'AddressCardState.setDefaultLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SetDefaultLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() editLoading,
    required TResult Function() setDefaultLoading,
    required TResult Function(String message) error,
    required TResult Function() successful,
  }) {
    return setDefaultLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? editLoading,
    TResult Function()? setDefaultLoading,
    TResult Function(String message)? error,
    TResult Function()? successful,
    required TResult orElse(),
  }) {
    if (setDefaultLoading != null) {
      return setDefaultLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(EditLoading value) editLoading,
    required TResult Function(SetDefaultLoading value) setDefaultLoading,
    required TResult Function(Error value) error,
    required TResult Function(SuccessfulSaved value) successful,
  }) {
    return setDefaultLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(EditLoading value)? editLoading,
    TResult Function(SetDefaultLoading value)? setDefaultLoading,
    TResult Function(Error value)? error,
    TResult Function(SuccessfulSaved value)? successful,
    required TResult orElse(),
  }) {
    if (setDefaultLoading != null) {
      return setDefaultLoading(this);
    }
    return orElse();
  }
}

abstract class SetDefaultLoading implements AddressCardState {
  const factory SetDefaultLoading() = _$SetDefaultLoading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$AddressCardStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Error(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddressCardState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() editLoading,
    required TResult Function() setDefaultLoading,
    required TResult Function(String message) error,
    required TResult Function() successful,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? editLoading,
    TResult Function()? setDefaultLoading,
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
    required TResult Function(EditLoading value) editLoading,
    required TResult Function(SetDefaultLoading value) setDefaultLoading,
    required TResult Function(Error value) error,
    required TResult Function(SuccessfulSaved value) successful,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(EditLoading value)? editLoading,
    TResult Function(SetDefaultLoading value)? setDefaultLoading,
    TResult Function(Error value)? error,
    TResult Function(SuccessfulSaved value)? successful,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AddressCardState {
  const factory Error(String message) = _$Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessfulSavedCopyWith<$Res> {
  factory $SuccessfulSavedCopyWith(
          SuccessfulSaved value, $Res Function(SuccessfulSaved) then) =
      _$SuccessfulSavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessfulSavedCopyWithImpl<$Res>
    extends _$AddressCardStateCopyWithImpl<$Res>
    implements $SuccessfulSavedCopyWith<$Res> {
  _$SuccessfulSavedCopyWithImpl(
      SuccessfulSaved _value, $Res Function(SuccessfulSaved) _then)
      : super(_value, (v) => _then(v as SuccessfulSaved));

  @override
  SuccessfulSaved get _value => super._value as SuccessfulSaved;
}

/// @nodoc
class _$SuccessfulSaved implements SuccessfulSaved {
  const _$SuccessfulSaved();

  @override
  String toString() {
    return 'AddressCardState.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessfulSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() editLoading,
    required TResult Function() setDefaultLoading,
    required TResult Function(String message) error,
    required TResult Function() successful,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? editLoading,
    TResult Function()? setDefaultLoading,
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
    required TResult Function(EditLoading value) editLoading,
    required TResult Function(SetDefaultLoading value) setDefaultLoading,
    required TResult Function(Error value) error,
    required TResult Function(SuccessfulSaved value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(EditLoading value)? editLoading,
    TResult Function(SetDefaultLoading value)? setDefaultLoading,
    TResult Function(Error value)? error,
    TResult Function(SuccessfulSaved value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SuccessfulSaved implements AddressCardState {
  const factory SuccessfulSaved() = _$SuccessfulSaved;
}

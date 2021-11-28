// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyAddressStateTearOff {
  const _$MyAddressStateTearOff();

  Loading loading() {
    return const Loading();
  }

  ShowAccountDetails showAccountDetails(AccountDetails accountDetails) {
    return ShowAccountDetails(
      accountDetails,
    );
  }

  Error error(String errorMessage) {
    return Error(
      errorMessage,
    );
  }
}

/// @nodoc
const $MyAddressState = _$MyAddressStateTearOff();

/// @nodoc
mixin _$MyAddressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AccountDetails accountDetails) showAccountDetails,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AccountDetails accountDetails)? showAccountDetails,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AccountDetails accountDetails)? showAccountDetails,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ShowAccountDetails value) showAccountDetails,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ShowAccountDetails value)? showAccountDetails,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ShowAccountDetails value)? showAccountDetails,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAddressStateCopyWith<$Res> {
  factory $MyAddressStateCopyWith(
          MyAddressState value, $Res Function(MyAddressState) then) =
      _$MyAddressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyAddressStateCopyWithImpl<$Res>
    implements $MyAddressStateCopyWith<$Res> {
  _$MyAddressStateCopyWithImpl(this._value, this._then);

  final MyAddressState _value;
  // ignore: unused_field
  final $Res Function(MyAddressState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$MyAddressStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'MyAddressState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AccountDetails accountDetails) showAccountDetails,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AccountDetails accountDetails)? showAccountDetails,
    TResult Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AccountDetails accountDetails)? showAccountDetails,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ShowAccountDetails value) showAccountDetails,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ShowAccountDetails value)? showAccountDetails,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ShowAccountDetails value)? showAccountDetails,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MyAddressState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ShowAccountDetailsCopyWith<$Res> {
  factory $ShowAccountDetailsCopyWith(
          ShowAccountDetails value, $Res Function(ShowAccountDetails) then) =
      _$ShowAccountDetailsCopyWithImpl<$Res>;
  $Res call({AccountDetails accountDetails});
}

/// @nodoc
class _$ShowAccountDetailsCopyWithImpl<$Res>
    extends _$MyAddressStateCopyWithImpl<$Res>
    implements $ShowAccountDetailsCopyWith<$Res> {
  _$ShowAccountDetailsCopyWithImpl(
      ShowAccountDetails _value, $Res Function(ShowAccountDetails) _then)
      : super(_value, (v) => _then(v as ShowAccountDetails));

  @override
  ShowAccountDetails get _value => super._value as ShowAccountDetails;

  @override
  $Res call({
    Object? accountDetails = freezed,
  }) {
    return _then(ShowAccountDetails(
      accountDetails == freezed
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetails,
    ));
  }
}

/// @nodoc

class _$ShowAccountDetails implements ShowAccountDetails {
  const _$ShowAccountDetails(this.accountDetails);

  @override
  final AccountDetails accountDetails;

  @override
  String toString() {
    return 'MyAddressState.showAccountDetails(accountDetails: $accountDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowAccountDetails &&
            (identical(other.accountDetails, accountDetails) ||
                other.accountDetails == accountDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountDetails);

  @JsonKey(ignore: true)
  @override
  $ShowAccountDetailsCopyWith<ShowAccountDetails> get copyWith =>
      _$ShowAccountDetailsCopyWithImpl<ShowAccountDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AccountDetails accountDetails) showAccountDetails,
    required TResult Function(String errorMessage) error,
  }) {
    return showAccountDetails(accountDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AccountDetails accountDetails)? showAccountDetails,
    TResult Function(String errorMessage)? error,
  }) {
    return showAccountDetails?.call(accountDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AccountDetails accountDetails)? showAccountDetails,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (showAccountDetails != null) {
      return showAccountDetails(accountDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ShowAccountDetails value) showAccountDetails,
    required TResult Function(Error value) error,
  }) {
    return showAccountDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ShowAccountDetails value)? showAccountDetails,
    TResult Function(Error value)? error,
  }) {
    return showAccountDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ShowAccountDetails value)? showAccountDetails,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (showAccountDetails != null) {
      return showAccountDetails(this);
    }
    return orElse();
  }
}

abstract class ShowAccountDetails implements MyAddressState {
  const factory ShowAccountDetails(AccountDetails accountDetails) =
      _$ShowAccountDetails;

  AccountDetails get accountDetails;
  @JsonKey(ignore: true)
  $ShowAccountDetailsCopyWith<ShowAccountDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$MyAddressStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(Error(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'MyAddressState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AccountDetails accountDetails) showAccountDetails,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AccountDetails accountDetails)? showAccountDetails,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AccountDetails accountDetails)? showAccountDetails,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ShowAccountDetails value) showAccountDetails,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ShowAccountDetails value)? showAccountDetails,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ShowAccountDetails value)? showAccountDetails,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements MyAddressState {
  const factory Error(String errorMessage) = _$Error;

  String get errorMessage;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

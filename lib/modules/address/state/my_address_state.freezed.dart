// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'my_address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MyAddressStateTearOff {
  const _$MyAddressStateTearOff();

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  ShowAccountDetails showAccountDetails(AccountDetails accountDetails) {
    return ShowAccountDetails(
      accountDetails,
    );
  }

// ignore: unused_element
  Error error(String errorMessage) {
    return Error(
      errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MyAddressState = _$MyAddressStateTearOff();

/// @nodoc
mixin _$MyAddressState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result showAccountDetails(AccountDetails accountDetails),
    @required Result error(String errorMessage),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result showAccountDetails(AccountDetails accountDetails),
    Result error(String errorMessage),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(Loading value),
    @required Result showAccountDetails(ShowAccountDetails value),
    @required Result error(Error value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result showAccountDetails(ShowAccountDetails value),
    Result error(Error value),
    @required Result orElse(),
  });
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
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result showAccountDetails(AccountDetails accountDetails),
    @required Result error(String errorMessage),
  }) {
    assert(loading != null);
    assert(showAccountDetails != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result showAccountDetails(AccountDetails accountDetails),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(Loading value),
    @required Result showAccountDetails(ShowAccountDetails value),
    @required Result error(Error value),
  }) {
    assert(loading != null);
    assert(showAccountDetails != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result showAccountDetails(ShowAccountDetails value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
    Object accountDetails = freezed,
  }) {
    return _then(ShowAccountDetails(
      accountDetails == freezed
          ? _value.accountDetails
          : accountDetails as AccountDetails,
    ));
  }
}

/// @nodoc
class _$ShowAccountDetails implements ShowAccountDetails {
  const _$ShowAccountDetails(this.accountDetails)
      : assert(accountDetails != null);

  @override
  final AccountDetails accountDetails;

  @override
  String toString() {
    return 'MyAddressState.showAccountDetails(accountDetails: $accountDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowAccountDetails &&
            (identical(other.accountDetails, accountDetails) ||
                const DeepCollectionEquality()
                    .equals(other.accountDetails, accountDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accountDetails);

  @override
  $ShowAccountDetailsCopyWith<ShowAccountDetails> get copyWith =>
      _$ShowAccountDetailsCopyWithImpl<ShowAccountDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result showAccountDetails(AccountDetails accountDetails),
    @required Result error(String errorMessage),
  }) {
    assert(loading != null);
    assert(showAccountDetails != null);
    assert(error != null);
    return showAccountDetails(accountDetails);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result showAccountDetails(AccountDetails accountDetails),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showAccountDetails != null) {
      return showAccountDetails(accountDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(Loading value),
    @required Result showAccountDetails(ShowAccountDetails value),
    @required Result error(Error value),
  }) {
    assert(loading != null);
    assert(showAccountDetails != null);
    assert(error != null);
    return showAccountDetails(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result showAccountDetails(ShowAccountDetails value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

  $ShowAccountDetailsCopyWith<ShowAccountDetails> get copyWith;
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
    Object errorMessage = freezed,
  }) {
    return _then(Error(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.errorMessage) : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'MyAddressState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result showAccountDetails(AccountDetails accountDetails),
    @required Result error(String errorMessage),
  }) {
    assert(loading != null);
    assert(showAccountDetails != null);
    assert(error != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result showAccountDetails(AccountDetails accountDetails),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(Loading value),
    @required Result showAccountDetails(ShowAccountDetails value),
    @required Result error(Error value),
  }) {
    assert(loading != null);
    assert(showAccountDetails != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result showAccountDetails(ShowAccountDetails value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements MyAddressState {
  const factory Error(String errorMessage) = _$Error;

  String get errorMessage;

  $ErrorCopyWith<Error> get copyWith;
}

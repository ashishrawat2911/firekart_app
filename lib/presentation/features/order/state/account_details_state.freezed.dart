// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountDetailsStateTearOff {
  const _$AccountDetailsStateTearOff();

  _AccountDetailsState call(
      {AccountDetailsModel? accountDetails, AddressModel? selectedAddress}) {
    return _AccountDetailsState(
      accountDetails: accountDetails,
      selectedAddress: selectedAddress,
    );
  }
}

/// @nodoc
const $AccountDetailsState = _$AccountDetailsStateTearOff();

/// @nodoc
mixin _$AccountDetailsState {
  AccountDetailsModel? get accountDetails => throw _privateConstructorUsedError;
  AddressModel? get selectedAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountDetailsStateCopyWith<AccountDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailsStateCopyWith<$Res> {
  factory $AccountDetailsStateCopyWith(
          AccountDetailsState value, $Res Function(AccountDetailsState) then) =
      _$AccountDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {AccountDetailsModel? accountDetails, AddressModel? selectedAddress});
}

/// @nodoc
class _$AccountDetailsStateCopyWithImpl<$Res>
    implements $AccountDetailsStateCopyWith<$Res> {
  _$AccountDetailsStateCopyWithImpl(this._value, this._then);

  final AccountDetailsState _value;
  // ignore: unused_field
  final $Res Function(AccountDetailsState) _then;

  @override
  $Res call({
    Object? accountDetails = freezed,
    Object? selectedAddress = freezed,
  }) {
    return _then(_value.copyWith(
      accountDetails: accountDetails == freezed
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetailsModel?,
      selectedAddress: selectedAddress == freezed
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
    ));
  }
}

/// @nodoc
abstract class _$AccountDetailsStateCopyWith<$Res>
    implements $AccountDetailsStateCopyWith<$Res> {
  factory _$AccountDetailsStateCopyWith(_AccountDetailsState value,
          $Res Function(_AccountDetailsState) then) =
      __$AccountDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AccountDetailsModel? accountDetails, AddressModel? selectedAddress});
}

/// @nodoc
class __$AccountDetailsStateCopyWithImpl<$Res>
    extends _$AccountDetailsStateCopyWithImpl<$Res>
    implements _$AccountDetailsStateCopyWith<$Res> {
  __$AccountDetailsStateCopyWithImpl(
      _AccountDetailsState _value, $Res Function(_AccountDetailsState) _then)
      : super(_value, (v) => _then(v as _AccountDetailsState));

  @override
  _AccountDetailsState get _value => super._value as _AccountDetailsState;

  @override
  $Res call({
    Object? accountDetails = freezed,
    Object? selectedAddress = freezed,
  }) {
    return _then(_AccountDetailsState(
      accountDetails: accountDetails == freezed
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetailsModel?,
      selectedAddress: selectedAddress == freezed
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
    ));
  }
}

/// @nodoc

class _$_AccountDetailsState implements _AccountDetailsState {
  _$_AccountDetailsState({this.accountDetails, this.selectedAddress});

  @override
  final AccountDetailsModel? accountDetails;
  @override
  final AddressModel? selectedAddress;

  @override
  String toString() {
    return 'AccountDetailsState(accountDetails: $accountDetails, selectedAddress: $selectedAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountDetailsState &&
            const DeepCollectionEquality()
                .equals(other.accountDetails, accountDetails) &&
            const DeepCollectionEquality()
                .equals(other.selectedAddress, selectedAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountDetails),
      const DeepCollectionEquality().hash(selectedAddress));

  @JsonKey(ignore: true)
  @override
  _$AccountDetailsStateCopyWith<_AccountDetailsState> get copyWith =>
      __$AccountDetailsStateCopyWithImpl<_AccountDetailsState>(
          this, _$identity);
}

abstract class _AccountDetailsState implements AccountDetailsState {
  factory _AccountDetailsState(
      {AccountDetailsModel? accountDetails,
      AddressModel? selectedAddress}) = _$_AccountDetailsState;

  @override
  AccountDetailsModel? get accountDetails;
  @override
  AddressModel? get selectedAddress;
  @override
  @JsonKey(ignore: true)
  _$AccountDetailsStateCopyWith<_AccountDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

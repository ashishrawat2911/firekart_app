// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountDetailsState {
  AccountDetails? get accountDetails => throw _privateConstructorUsedError;
  Address? get selectedAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountDetailsStateCopyWith<AccountDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailsStateCopyWith<$Res> {
  factory $AccountDetailsStateCopyWith(
          AccountDetailsState value, $Res Function(AccountDetailsState) then) =
      _$AccountDetailsStateCopyWithImpl<$Res, AccountDetailsState>;
  @useResult
  $Res call({AccountDetails? accountDetails, Address? selectedAddress});
}

/// @nodoc
class _$AccountDetailsStateCopyWithImpl<$Res, $Val extends AccountDetailsState>
    implements $AccountDetailsStateCopyWith<$Res> {
  _$AccountDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountDetails = freezed,
    Object? selectedAddress = freezed,
  }) {
    return _then(_value.copyWith(
      accountDetails: freezed == accountDetails
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetails?,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountDetailsStateCopyWith<$Res>
    implements $AccountDetailsStateCopyWith<$Res> {
  factory _$$_AccountDetailsStateCopyWith(_$_AccountDetailsState value,
          $Res Function(_$_AccountDetailsState) then) =
      __$$_AccountDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountDetails? accountDetails, Address? selectedAddress});
}

/// @nodoc
class __$$_AccountDetailsStateCopyWithImpl<$Res>
    extends _$AccountDetailsStateCopyWithImpl<$Res, _$_AccountDetailsState>
    implements _$$_AccountDetailsStateCopyWith<$Res> {
  __$$_AccountDetailsStateCopyWithImpl(_$_AccountDetailsState _value,
      $Res Function(_$_AccountDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountDetails = freezed,
    Object? selectedAddress = freezed,
  }) {
    return _then(_$_AccountDetailsState(
      accountDetails: freezed == accountDetails
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetails?,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
    ));
  }
}

/// @nodoc

class _$_AccountDetailsState implements _AccountDetailsState {
  _$_AccountDetailsState({this.accountDetails, this.selectedAddress});

  @override
  final AccountDetails? accountDetails;
  @override
  final Address? selectedAddress;

  @override
  String toString() {
    return 'AccountDetailsState(accountDetails: $accountDetails, selectedAddress: $selectedAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountDetailsState &&
            (identical(other.accountDetails, accountDetails) ||
                other.accountDetails == accountDetails) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountDetails, selectedAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountDetailsStateCopyWith<_$_AccountDetailsState> get copyWith =>
      __$$_AccountDetailsStateCopyWithImpl<_$_AccountDetailsState>(
          this, _$identity);
}

abstract class _AccountDetailsState implements AccountDetailsState {
  factory _AccountDetailsState(
      {final AccountDetails? accountDetails,
      final Address? selectedAddress}) = _$_AccountDetailsState;

  @override
  AccountDetails? get accountDetails;
  @override
  Address? get selectedAddress;
  @override
  @JsonKey(ignore: true)
  _$$_AccountDetailsStateCopyWith<_$_AccountDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

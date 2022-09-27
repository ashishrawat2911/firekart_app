// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {int bottomIndex = 0,
      int noOfItemsInCart = 0,
      AccountDetails? accountDetails}) {
    return _HomeState(
      bottomIndex: bottomIndex,
      noOfItemsInCart: noOfItemsInCart,
      accountDetails: accountDetails,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  int get bottomIndex => throw _privateConstructorUsedError;
  int get noOfItemsInCart => throw _privateConstructorUsedError;
  AccountDetails? get accountDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {int bottomIndex, int noOfItemsInCart, AccountDetails? accountDetails});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? bottomIndex = freezed,
    Object? noOfItemsInCart = freezed,
    Object? accountDetails = freezed,
  }) {
    return _then(_value.copyWith(
      bottomIndex: bottomIndex == freezed
          ? _value.bottomIndex
          : bottomIndex // ignore: cast_nullable_to_non_nullable
              as int,
      noOfItemsInCart: noOfItemsInCart == freezed
          ? _value.noOfItemsInCart
          : noOfItemsInCart // ignore: cast_nullable_to_non_nullable
              as int,
      accountDetails: accountDetails == freezed
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetails?,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int bottomIndex, int noOfItemsInCart, AccountDetails? accountDetails});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? bottomIndex = freezed,
    Object? noOfItemsInCart = freezed,
    Object? accountDetails = freezed,
  }) {
    return _then(_HomeState(
      bottomIndex: bottomIndex == freezed
          ? _value.bottomIndex
          : bottomIndex // ignore: cast_nullable_to_non_nullable
              as int,
      noOfItemsInCart: noOfItemsInCart == freezed
          ? _value.noOfItemsInCart
          : noOfItemsInCart // ignore: cast_nullable_to_non_nullable
              as int,
      accountDetails: accountDetails == freezed
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetails?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.bottomIndex = 0, this.noOfItemsInCart = 0, this.accountDetails});

  @JsonKey()
  @override
  final int bottomIndex;
  @JsonKey()
  @override
  final int noOfItemsInCart;
  @override
  final AccountDetails? accountDetails;

  @override
  String toString() {
    return 'HomeState(bottomIndex: $bottomIndex, noOfItemsInCart: $noOfItemsInCart, accountDetails: $accountDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality()
                .equals(other.bottomIndex, bottomIndex) &&
            const DeepCollectionEquality()
                .equals(other.noOfItemsInCart, noOfItemsInCart) &&
            const DeepCollectionEquality()
                .equals(other.accountDetails, accountDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bottomIndex),
      const DeepCollectionEquality().hash(noOfItemsInCart),
      const DeepCollectionEquality().hash(accountDetails));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {int bottomIndex,
      int noOfItemsInCart,
      AccountDetails? accountDetails}) = _$_HomeState;

  @override
  int get bottomIndex;
  @override
  int get noOfItemsInCart;
  @override
  AccountDetails? get accountDetails;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

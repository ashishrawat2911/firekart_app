// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  int get bottomIndex => throw _privateConstructorUsedError;
  int get noOfItemsInCart => throw _privateConstructorUsedError;
  AccountDetails? get accountDetails => throw _privateConstructorUsedError;
  List<Address> get addresses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {int bottomIndex,
      int noOfItemsInCart,
      AccountDetails? accountDetails,
      List<Address> addresses});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomIndex = null,
    Object? noOfItemsInCart = null,
    Object? accountDetails = freezed,
    Object? addresses = null,
  }) {
    return _then(_value.copyWith(
      bottomIndex: null == bottomIndex
          ? _value.bottomIndex
          : bottomIndex // ignore: cast_nullable_to_non_nullable
              as int,
      noOfItemsInCart: null == noOfItemsInCart
          ? _value.noOfItemsInCart
          : noOfItemsInCart // ignore: cast_nullable_to_non_nullable
              as int,
      accountDetails: freezed == accountDetails
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetails?,
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int bottomIndex,
      int noOfItemsInCart,
      AccountDetails? accountDetails,
      List<Address> addresses});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomIndex = null,
    Object? noOfItemsInCart = null,
    Object? accountDetails = freezed,
    Object? addresses = null,
  }) {
    return _then(_$_HomeState(
      bottomIndex: null == bottomIndex
          ? _value.bottomIndex
          : bottomIndex // ignore: cast_nullable_to_non_nullable
              as int,
      noOfItemsInCart: null == noOfItemsInCart
          ? _value.noOfItemsInCart
          : noOfItemsInCart // ignore: cast_nullable_to_non_nullable
              as int,
      accountDetails: freezed == accountDetails
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetails?,
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.bottomIndex = 0,
      this.noOfItemsInCart = 0,
      this.accountDetails,
      final List<Address> addresses = const []})
      : _addresses = addresses;

  @override
  @JsonKey()
  final int bottomIndex;
  @override
  @JsonKey()
  final int noOfItemsInCart;
  @override
  final AccountDetails? accountDetails;
  final List<Address> _addresses;
  @override
  @JsonKey()
  List<Address> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  String toString() {
    return 'HomeState(bottomIndex: $bottomIndex, noOfItemsInCart: $noOfItemsInCart, accountDetails: $accountDetails, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.bottomIndex, bottomIndex) ||
                other.bottomIndex == bottomIndex) &&
            (identical(other.noOfItemsInCart, noOfItemsInCart) ||
                other.noOfItemsInCart == noOfItemsInCart) &&
            (identical(other.accountDetails, accountDetails) ||
                other.accountDetails == accountDetails) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bottomIndex, noOfItemsInCart,
      accountDetails, const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final int bottomIndex,
      final int noOfItemsInCart,
      final AccountDetails? accountDetails,
      final List<Address> addresses}) = _$_HomeState;

  @override
  int get bottomIndex;
  @override
  int get noOfItemsInCart;
  @override
  AccountDetails? get accountDetails;
  @override
  List<Address> get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

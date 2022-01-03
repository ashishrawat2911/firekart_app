// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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

  _MyAddressState call(
      {bool screenLoading = false,
      String? screenError,
      bool buttonLoading = false,
      AccountDetails? accountDetails,
      List<AddressCardState> addressStates = const []}) {
    return _MyAddressState(
      screenLoading: screenLoading,
      screenError: screenError,
      buttonLoading: buttonLoading,
      accountDetails: accountDetails,
      addressStates: addressStates,
    );
  }
}

/// @nodoc
const $MyAddressState = _$MyAddressStateTearOff();

/// @nodoc
mixin _$MyAddressState {
  bool get screenLoading => throw _privateConstructorUsedError;
  String? get screenError => throw _privateConstructorUsedError;
  bool get buttonLoading => throw _privateConstructorUsedError;
  AccountDetails? get accountDetails => throw _privateConstructorUsedError;
  List<AddressCardState> get addressStates =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyAddressStateCopyWith<MyAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAddressStateCopyWith<$Res> {
  factory $MyAddressStateCopyWith(
          MyAddressState value, $Res Function(MyAddressState) then) =
      _$MyAddressStateCopyWithImpl<$Res>;
  $Res call(
      {bool screenLoading,
      String? screenError,
      bool buttonLoading,
      AccountDetails? accountDetails,
      List<AddressCardState> addressStates});
}

/// @nodoc
class _$MyAddressStateCopyWithImpl<$Res>
    implements $MyAddressStateCopyWith<$Res> {
  _$MyAddressStateCopyWithImpl(this._value, this._then);

  final MyAddressState _value;
  // ignore: unused_field
  final $Res Function(MyAddressState) _then;

  @override
  $Res call({
    Object? screenLoading = freezed,
    Object? screenError = freezed,
    Object? buttonLoading = freezed,
    Object? accountDetails = freezed,
    Object? addressStates = freezed,
  }) {
    return _then(_value.copyWith(
      screenLoading: screenLoading == freezed
          ? _value.screenLoading
          : screenLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      screenError: screenError == freezed
          ? _value.screenError
          : screenError // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonLoading: buttonLoading == freezed
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      accountDetails: accountDetails == freezed
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetails?,
      addressStates: addressStates == freezed
          ? _value.addressStates
          : addressStates // ignore: cast_nullable_to_non_nullable
              as List<AddressCardState>,
    ));
  }
}

/// @nodoc
abstract class _$MyAddressStateCopyWith<$Res>
    implements $MyAddressStateCopyWith<$Res> {
  factory _$MyAddressStateCopyWith(
          _MyAddressState value, $Res Function(_MyAddressState) then) =
      __$MyAddressStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool screenLoading,
      String? screenError,
      bool buttonLoading,
      AccountDetails? accountDetails,
      List<AddressCardState> addressStates});
}

/// @nodoc
class __$MyAddressStateCopyWithImpl<$Res>
    extends _$MyAddressStateCopyWithImpl<$Res>
    implements _$MyAddressStateCopyWith<$Res> {
  __$MyAddressStateCopyWithImpl(
      _MyAddressState _value, $Res Function(_MyAddressState) _then)
      : super(_value, (v) => _then(v as _MyAddressState));

  @override
  _MyAddressState get _value => super._value as _MyAddressState;

  @override
  $Res call({
    Object? screenLoading = freezed,
    Object? screenError = freezed,
    Object? buttonLoading = freezed,
    Object? accountDetails = freezed,
    Object? addressStates = freezed,
  }) {
    return _then(_MyAddressState(
      screenLoading: screenLoading == freezed
          ? _value.screenLoading
          : screenLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      screenError: screenError == freezed
          ? _value.screenError
          : screenError // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonLoading: buttonLoading == freezed
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      accountDetails: accountDetails == freezed
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetails?,
      addressStates: addressStates == freezed
          ? _value.addressStates
          : addressStates // ignore: cast_nullable_to_non_nullable
              as List<AddressCardState>,
    ));
  }
}

/// @nodoc

class _$_MyAddressState implements _MyAddressState {
  const _$_MyAddressState(
      {this.screenLoading = false,
      this.screenError,
      this.buttonLoading = false,
      this.accountDetails,
      this.addressStates = const []});

  @JsonKey()
  @override
  final bool screenLoading;
  @override
  final String? screenError;
  @JsonKey()
  @override
  final bool buttonLoading;
  @override
  final AccountDetails? accountDetails;
  @JsonKey()
  @override
  final List<AddressCardState> addressStates;

  @override
  String toString() {
    return 'MyAddressState(screenLoading: $screenLoading, screenError: $screenError, buttonLoading: $buttonLoading, accountDetails: $accountDetails, addressStates: $addressStates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyAddressState &&
            const DeepCollectionEquality()
                .equals(other.screenLoading, screenLoading) &&
            const DeepCollectionEquality()
                .equals(other.screenError, screenError) &&
            const DeepCollectionEquality()
                .equals(other.buttonLoading, buttonLoading) &&
            const DeepCollectionEquality()
                .equals(other.accountDetails, accountDetails) &&
            const DeepCollectionEquality()
                .equals(other.addressStates, addressStates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(screenLoading),
      const DeepCollectionEquality().hash(screenError),
      const DeepCollectionEquality().hash(buttonLoading),
      const DeepCollectionEquality().hash(accountDetails),
      const DeepCollectionEquality().hash(addressStates));

  @JsonKey(ignore: true)
  @override
  _$MyAddressStateCopyWith<_MyAddressState> get copyWith =>
      __$MyAddressStateCopyWithImpl<_MyAddressState>(this, _$identity);
}

abstract class _MyAddressState implements MyAddressState {
  const factory _MyAddressState(
      {bool screenLoading,
      String? screenError,
      bool buttonLoading,
      AccountDetails? accountDetails,
      List<AddressCardState> addressStates}) = _$_MyAddressState;

  @override
  bool get screenLoading;
  @override
  String? get screenError;
  @override
  bool get buttonLoading;
  @override
  AccountDetails? get accountDetails;
  @override
  List<AddressCardState> get addressStates;
  @override
  @JsonKey(ignore: true)
  _$MyAddressStateCopyWith<_MyAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddressCardStateTearOff {
  const _$AddressCardStateTearOff();

  _AddressCardState call(
      {int index = 0,
      required Address address,
      bool editLoading = false,
      bool setDefaultLoading = false}) {
    return _AddressCardState(
      index: index,
      address: address,
      editLoading: editLoading,
      setDefaultLoading: setDefaultLoading,
    );
  }
}

/// @nodoc
const $AddressCardState = _$AddressCardStateTearOff();

/// @nodoc
mixin _$AddressCardState {
  int get index => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  bool get editLoading => throw _privateConstructorUsedError;
  bool get setDefaultLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressCardStateCopyWith<AddressCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCardStateCopyWith<$Res> {
  factory $AddressCardStateCopyWith(
          AddressCardState value, $Res Function(AddressCardState) then) =
      _$AddressCardStateCopyWithImpl<$Res>;
  $Res call(
      {int index, Address address, bool editLoading, bool setDefaultLoading});
}

/// @nodoc
class _$AddressCardStateCopyWithImpl<$Res>
    implements $AddressCardStateCopyWith<$Res> {
  _$AddressCardStateCopyWithImpl(this._value, this._then);

  final AddressCardState _value;
  // ignore: unused_field
  final $Res Function(AddressCardState) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? address = freezed,
    Object? editLoading = freezed,
    Object? setDefaultLoading = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      editLoading: editLoading == freezed
          ? _value.editLoading
          : editLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      setDefaultLoading: setDefaultLoading == freezed
          ? _value.setDefaultLoading
          : setDefaultLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddressCardStateCopyWith<$Res>
    implements $AddressCardStateCopyWith<$Res> {
  factory _$AddressCardStateCopyWith(
          _AddressCardState value, $Res Function(_AddressCardState) then) =
      __$AddressCardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int index, Address address, bool editLoading, bool setDefaultLoading});
}

/// @nodoc
class __$AddressCardStateCopyWithImpl<$Res>
    extends _$AddressCardStateCopyWithImpl<$Res>
    implements _$AddressCardStateCopyWith<$Res> {
  __$AddressCardStateCopyWithImpl(
      _AddressCardState _value, $Res Function(_AddressCardState) _then)
      : super(_value, (v) => _then(v as _AddressCardState));

  @override
  _AddressCardState get _value => super._value as _AddressCardState;

  @override
  $Res call({
    Object? index = freezed,
    Object? address = freezed,
    Object? editLoading = freezed,
    Object? setDefaultLoading = freezed,
  }) {
    return _then(_AddressCardState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      editLoading: editLoading == freezed
          ? _value.editLoading
          : editLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      setDefaultLoading: setDefaultLoading == freezed
          ? _value.setDefaultLoading
          : setDefaultLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddressCardState implements _AddressCardState {
  const _$_AddressCardState(
      {this.index = 0,
      required this.address,
      this.editLoading = false,
      this.setDefaultLoading = false});

  @JsonKey()
  @override
  final int index;
  @override
  final Address address;
  @JsonKey()
  @override
  final bool editLoading;
  @JsonKey()
  @override
  final bool setDefaultLoading;

  @override
  String toString() {
    return 'AddressCardState(index: $index, address: $address, editLoading: $editLoading, setDefaultLoading: $setDefaultLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressCardState &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.editLoading, editLoading) &&
            const DeepCollectionEquality()
                .equals(other.setDefaultLoading, setDefaultLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(editLoading),
      const DeepCollectionEquality().hash(setDefaultLoading));

  @JsonKey(ignore: true)
  @override
  _$AddressCardStateCopyWith<_AddressCardState> get copyWith =>
      __$AddressCardStateCopyWithImpl<_AddressCardState>(this, _$identity);
}

abstract class _AddressCardState implements AddressCardState {
  const factory _AddressCardState(
      {int index,
      required Address address,
      bool editLoading,
      bool setDefaultLoading}) = _$_AddressCardState;

  @override
  int get index;
  @override
  Address get address;
  @override
  bool get editLoading;
  @override
  bool get setDefaultLoading;
  @override
  @JsonKey(ignore: true)
  _$AddressCardStateCopyWith<_AddressCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

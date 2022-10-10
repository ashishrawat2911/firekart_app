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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_MyAddressStateCopyWith<$Res>
    implements $MyAddressStateCopyWith<$Res> {
  factory _$$_MyAddressStateCopyWith(
          _$_MyAddressState value, $Res Function(_$_MyAddressState) then) =
      __$$_MyAddressStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool screenLoading,
      String? screenError,
      bool buttonLoading,
      AccountDetails? accountDetails,
      List<AddressCardState> addressStates});
}

/// @nodoc
class __$$_MyAddressStateCopyWithImpl<$Res>
    extends _$MyAddressStateCopyWithImpl<$Res>
    implements _$$_MyAddressStateCopyWith<$Res> {
  __$$_MyAddressStateCopyWithImpl(
      _$_MyAddressState _value, $Res Function(_$_MyAddressState) _then)
      : super(_value, (v) => _then(v as _$_MyAddressState));

  @override
  _$_MyAddressState get _value => super._value as _$_MyAddressState;

  @override
  $Res call({
    Object? screenLoading = freezed,
    Object? screenError = freezed,
    Object? buttonLoading = freezed,
    Object? accountDetails = freezed,
    Object? addressStates = freezed,
  }) {
    return _then(_$_MyAddressState(
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
          ? _value._addressStates
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
      final List<AddressCardState> addressStates = const []})
      : _addressStates = addressStates;

  @override
  @JsonKey()
  final bool screenLoading;
  @override
  final String? screenError;
  @override
  @JsonKey()
  final bool buttonLoading;
  @override
  final AccountDetails? accountDetails;
  final List<AddressCardState> _addressStates;
  @override
  @JsonKey()
  List<AddressCardState> get addressStates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressStates);
  }

  @override
  String toString() {
    return 'MyAddressState(screenLoading: $screenLoading, screenError: $screenError, buttonLoading: $buttonLoading, accountDetails: $accountDetails, addressStates: $addressStates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyAddressState &&
            const DeepCollectionEquality()
                .equals(other.screenLoading, screenLoading) &&
            const DeepCollectionEquality()
                .equals(other.screenError, screenError) &&
            const DeepCollectionEquality()
                .equals(other.buttonLoading, buttonLoading) &&
            const DeepCollectionEquality()
                .equals(other.accountDetails, accountDetails) &&
            const DeepCollectionEquality()
                .equals(other._addressStates, _addressStates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(screenLoading),
      const DeepCollectionEquality().hash(screenError),
      const DeepCollectionEquality().hash(buttonLoading),
      const DeepCollectionEquality().hash(accountDetails),
      const DeepCollectionEquality().hash(_addressStates));

  @JsonKey(ignore: true)
  @override
  _$$_MyAddressStateCopyWith<_$_MyAddressState> get copyWith =>
      __$$_MyAddressStateCopyWithImpl<_$_MyAddressState>(this, _$identity);
}

abstract class _MyAddressState implements MyAddressState {
  const factory _MyAddressState(
      {final bool screenLoading,
      final String? screenError,
      final bool buttonLoading,
      final AccountDetails? accountDetails,
      final List<AddressCardState> addressStates}) = _$_MyAddressState;

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
  _$$_MyAddressStateCopyWith<_$_MyAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_AddressCardStateCopyWith<$Res>
    implements $AddressCardStateCopyWith<$Res> {
  factory _$$_AddressCardStateCopyWith(
          _$_AddressCardState value, $Res Function(_$_AddressCardState) then) =
      __$$_AddressCardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int index, Address address, bool editLoading, bool setDefaultLoading});
}

/// @nodoc
class __$$_AddressCardStateCopyWithImpl<$Res>
    extends _$AddressCardStateCopyWithImpl<$Res>
    implements _$$_AddressCardStateCopyWith<$Res> {
  __$$_AddressCardStateCopyWithImpl(
      _$_AddressCardState _value, $Res Function(_$_AddressCardState) _then)
      : super(_value, (v) => _then(v as _$_AddressCardState));

  @override
  _$_AddressCardState get _value => super._value as _$_AddressCardState;

  @override
  $Res call({
    Object? index = freezed,
    Object? address = freezed,
    Object? editLoading = freezed,
    Object? setDefaultLoading = freezed,
  }) {
    return _then(_$_AddressCardState(
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

  @override
  @JsonKey()
  final int index;
  @override
  final Address address;
  @override
  @JsonKey()
  final bool editLoading;
  @override
  @JsonKey()
  final bool setDefaultLoading;

  @override
  String toString() {
    return 'AddressCardState(index: $index, address: $address, editLoading: $editLoading, setDefaultLoading: $setDefaultLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressCardState &&
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
  _$$_AddressCardStateCopyWith<_$_AddressCardState> get copyWith =>
      __$$_AddressCardStateCopyWithImpl<_$_AddressCardState>(this, _$identity);
}

abstract class _AddressCardState implements AddressCardState {
  const factory _AddressCardState(
      {final int index,
      required final Address address,
      final bool editLoading,
      final bool setDefaultLoading}) = _$_AddressCardState;

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
  _$$_AddressCardStateCopyWith<_$_AddressCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

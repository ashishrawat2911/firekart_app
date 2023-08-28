// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  List<Address> get addresses => throw _privateConstructorUsedError;
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
      _$MyAddressStateCopyWithImpl<$Res, MyAddressState>;
  @useResult
  $Res call(
      {bool screenLoading,
      String? screenError,
      bool buttonLoading,
      List<Address> addresses,
      List<AddressCardState> addressStates});
}

/// @nodoc
class _$MyAddressStateCopyWithImpl<$Res, $Val extends MyAddressState>
    implements $MyAddressStateCopyWith<$Res> {
  _$MyAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenLoading = null,
    Object? screenError = freezed,
    Object? buttonLoading = null,
    Object? addresses = null,
    Object? addressStates = null,
  }) {
    return _then(_value.copyWith(
      screenLoading: null == screenLoading
          ? _value.screenLoading
          : screenLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      screenError: freezed == screenError
          ? _value.screenError
          : screenError // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      addressStates: null == addressStates
          ? _value.addressStates
          : addressStates // ignore: cast_nullable_to_non_nullable
              as List<AddressCardState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyAddressStateCopyWith<$Res>
    implements $MyAddressStateCopyWith<$Res> {
  factory _$$_MyAddressStateCopyWith(
          _$_MyAddressState value, $Res Function(_$_MyAddressState) then) =
      __$$_MyAddressStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool screenLoading,
      String? screenError,
      bool buttonLoading,
      List<Address> addresses,
      List<AddressCardState> addressStates});
}

/// @nodoc
class __$$_MyAddressStateCopyWithImpl<$Res>
    extends _$MyAddressStateCopyWithImpl<$Res, _$_MyAddressState>
    implements _$$_MyAddressStateCopyWith<$Res> {
  __$$_MyAddressStateCopyWithImpl(
      _$_MyAddressState _value, $Res Function(_$_MyAddressState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenLoading = null,
    Object? screenError = freezed,
    Object? buttonLoading = null,
    Object? addresses = null,
    Object? addressStates = null,
  }) {
    return _then(_$_MyAddressState(
      screenLoading: null == screenLoading
          ? _value.screenLoading
          : screenLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      screenError: freezed == screenError
          ? _value.screenError
          : screenError // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      addressStates: null == addressStates
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
      final List<Address> addresses = const [],
      final List<AddressCardState> addressStates = const <AddressCardState>[]})
      : _addresses = addresses,
        _addressStates = addressStates;

  @override
  @JsonKey()
  final bool screenLoading;
  @override
  final String? screenError;
  @override
  @JsonKey()
  final bool buttonLoading;
  final List<Address> _addresses;
  @override
  @JsonKey()
  List<Address> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  final List<AddressCardState> _addressStates;
  @override
  @JsonKey()
  List<AddressCardState> get addressStates {
    if (_addressStates is EqualUnmodifiableListView) return _addressStates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressStates);
  }

  @override
  String toString() {
    return 'MyAddressState(screenLoading: $screenLoading, screenError: $screenError, buttonLoading: $buttonLoading, addresses: $addresses, addressStates: $addressStates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyAddressState &&
            (identical(other.screenLoading, screenLoading) ||
                other.screenLoading == screenLoading) &&
            (identical(other.screenError, screenError) ||
                other.screenError == screenError) &&
            (identical(other.buttonLoading, buttonLoading) ||
                other.buttonLoading == buttonLoading) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            const DeepCollectionEquality()
                .equals(other._addressStates, _addressStates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      screenLoading,
      screenError,
      buttonLoading,
      const DeepCollectionEquality().hash(_addresses),
      const DeepCollectionEquality().hash(_addressStates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyAddressStateCopyWith<_$_MyAddressState> get copyWith =>
      __$$_MyAddressStateCopyWithImpl<_$_MyAddressState>(this, _$identity);
}

abstract class _MyAddressState implements MyAddressState {
  const factory _MyAddressState(
      {final bool screenLoading,
      final String? screenError,
      final bool buttonLoading,
      final List<Address> addresses,
      final List<AddressCardState> addressStates}) = _$_MyAddressState;

  @override
  bool get screenLoading;
  @override
  String? get screenError;
  @override
  bool get buttonLoading;
  @override
  List<Address> get addresses;
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
      _$AddressCardStateCopyWithImpl<$Res, AddressCardState>;
  @useResult
  $Res call(
      {int index, Address address, bool editLoading, bool setDefaultLoading});
}

/// @nodoc
class _$AddressCardStateCopyWithImpl<$Res, $Val extends AddressCardState>
    implements $AddressCardStateCopyWith<$Res> {
  _$AddressCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? address = null,
    Object? editLoading = null,
    Object? setDefaultLoading = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      editLoading: null == editLoading
          ? _value.editLoading
          : editLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      setDefaultLoading: null == setDefaultLoading
          ? _value.setDefaultLoading
          : setDefaultLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCardStateCopyWith<$Res>
    implements $AddressCardStateCopyWith<$Res> {
  factory _$$_AddressCardStateCopyWith(
          _$_AddressCardState value, $Res Function(_$_AddressCardState) then) =
      __$$_AddressCardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index, Address address, bool editLoading, bool setDefaultLoading});
}

/// @nodoc
class __$$_AddressCardStateCopyWithImpl<$Res>
    extends _$AddressCardStateCopyWithImpl<$Res, _$_AddressCardState>
    implements _$$_AddressCardStateCopyWith<$Res> {
  __$$_AddressCardStateCopyWithImpl(
      _$_AddressCardState _value, $Res Function(_$_AddressCardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? address = null,
    Object? editLoading = null,
    Object? setDefaultLoading = null,
  }) {
    return _then(_$_AddressCardState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      editLoading: null == editLoading
          ? _value.editLoading
          : editLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      setDefaultLoading: null == setDefaultLoading
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
            (identical(other.index, index) || other.index == index) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.editLoading, editLoading) ||
                other.editLoading == editLoading) &&
            (identical(other.setDefaultLoading, setDefaultLoading) ||
                other.setDefaultLoading == setDefaultLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, index, address, editLoading, setDefaultLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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

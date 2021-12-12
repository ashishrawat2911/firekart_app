// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddAddressStateTearOff {
  const _$AddAddressStateTearOff();

  _AddAddressState call({bool buttonLoading = false}) {
    return _AddAddressState(
      buttonLoading: buttonLoading,
    );
  }
}

/// @nodoc
const $AddAddressState = _$AddAddressStateTearOff();

/// @nodoc
mixin _$AddAddressState {
  bool get buttonLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAddressStateCopyWith<AddAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAddressStateCopyWith<$Res> {
  factory $AddAddressStateCopyWith(
          AddAddressState value, $Res Function(AddAddressState) then) =
      _$AddAddressStateCopyWithImpl<$Res>;
  $Res call({bool buttonLoading});
}

/// @nodoc
class _$AddAddressStateCopyWithImpl<$Res>
    implements $AddAddressStateCopyWith<$Res> {
  _$AddAddressStateCopyWithImpl(this._value, this._then);

  final AddAddressState _value;
  // ignore: unused_field
  final $Res Function(AddAddressState) _then;

  @override
  $Res call({
    Object? buttonLoading = freezed,
  }) {
    return _then(_value.copyWith(
      buttonLoading: buttonLoading == freezed
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddAddressStateCopyWith<$Res>
    implements $AddAddressStateCopyWith<$Res> {
  factory _$AddAddressStateCopyWith(
          _AddAddressState value, $Res Function(_AddAddressState) then) =
      __$AddAddressStateCopyWithImpl<$Res>;
  @override
  $Res call({bool buttonLoading});
}

/// @nodoc
class __$AddAddressStateCopyWithImpl<$Res>
    extends _$AddAddressStateCopyWithImpl<$Res>
    implements _$AddAddressStateCopyWith<$Res> {
  __$AddAddressStateCopyWithImpl(
      _AddAddressState _value, $Res Function(_AddAddressState) _then)
      : super(_value, (v) => _then(v as _AddAddressState));

  @override
  _AddAddressState get _value => super._value as _AddAddressState;

  @override
  $Res call({
    Object? buttonLoading = freezed,
  }) {
    return _then(_AddAddressState(
      buttonLoading: buttonLoading == freezed
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddAddressState implements _AddAddressState {
  const _$_AddAddressState({this.buttonLoading = false});

  @JsonKey(defaultValue: false)
  @override
  final bool buttonLoading;

  @override
  String toString() {
    return 'AddAddressState(buttonLoading: $buttonLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddAddressState &&
            const DeepCollectionEquality()
                .equals(other.buttonLoading, buttonLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(buttonLoading));

  @JsonKey(ignore: true)
  @override
  _$AddAddressStateCopyWith<_AddAddressState> get copyWith =>
      __$AddAddressStateCopyWithImpl<_AddAddressState>(this, _$identity);
}

abstract class _AddAddressState implements AddAddressState {
  const factory _AddAddressState({bool buttonLoading}) = _$_AddAddressState;

  @override
  bool get buttonLoading;
  @override
  @JsonKey(ignore: true)
  _$AddAddressStateCopyWith<_AddAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

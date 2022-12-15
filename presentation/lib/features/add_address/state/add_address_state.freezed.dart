// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddAddressState {
  bool get buttonLoading => throw _privateConstructorUsedError;
  bool get setAsDefault => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAddressStateCopyWith<AddAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAddressStateCopyWith<$Res> {
  factory $AddAddressStateCopyWith(
          AddAddressState value, $Res Function(AddAddressState) then) =
      _$AddAddressStateCopyWithImpl<$Res, AddAddressState>;
  @useResult
  $Res call({bool buttonLoading, bool setAsDefault});
}

/// @nodoc
class _$AddAddressStateCopyWithImpl<$Res, $Val extends AddAddressState>
    implements $AddAddressStateCopyWith<$Res> {
  _$AddAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonLoading = null,
    Object? setAsDefault = null,
  }) {
    return _then(_value.copyWith(
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      setAsDefault: null == setAsDefault
          ? _value.setAsDefault
          : setAsDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddAddressStateCopyWith<$Res>
    implements $AddAddressStateCopyWith<$Res> {
  factory _$$_AddAddressStateCopyWith(
          _$_AddAddressState value, $Res Function(_$_AddAddressState) then) =
      __$$_AddAddressStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool buttonLoading, bool setAsDefault});
}

/// @nodoc
class __$$_AddAddressStateCopyWithImpl<$Res>
    extends _$AddAddressStateCopyWithImpl<$Res, _$_AddAddressState>
    implements _$$_AddAddressStateCopyWith<$Res> {
  __$$_AddAddressStateCopyWithImpl(
      _$_AddAddressState _value, $Res Function(_$_AddAddressState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonLoading = null,
    Object? setAsDefault = null,
  }) {
    return _then(_$_AddAddressState(
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      setAsDefault: null == setAsDefault
          ? _value.setAsDefault
          : setAsDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddAddressState implements _AddAddressState {
  const _$_AddAddressState(
      {this.buttonLoading = false, this.setAsDefault = false});

  @override
  @JsonKey()
  final bool buttonLoading;
  @override
  @JsonKey()
  final bool setAsDefault;

  @override
  String toString() {
    return 'AddAddressState(buttonLoading: $buttonLoading, setAsDefault: $setAsDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAddressState &&
            (identical(other.buttonLoading, buttonLoading) ||
                other.buttonLoading == buttonLoading) &&
            (identical(other.setAsDefault, setAsDefault) ||
                other.setAsDefault == setAsDefault));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buttonLoading, setAsDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddAddressStateCopyWith<_$_AddAddressState> get copyWith =>
      __$$_AddAddressStateCopyWithImpl<_$_AddAddressState>(this, _$identity);
}

abstract class _AddAddressState implements AddAddressState {
  const factory _AddAddressState(
      {final bool buttonLoading, final bool setAsDefault}) = _$_AddAddressState;

  @override
  bool get buttonLoading;
  @override
  bool get setAsDefault;
  @override
  @JsonKey(ignore: true)
  _$$_AddAddressStateCopyWith<_$_AddAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

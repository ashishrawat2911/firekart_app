// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhoneLoginStateTearOff {
  const _$PhoneLoginStateTearOff();

  _PhoneLoginState call(
      {String? codeCountDown,
      bool isButtonEnabled = false,
      bool phoneLoading = false,
      String? error}) {
    return _PhoneLoginState(
      codeCountDown: codeCountDown,
      isButtonEnabled: isButtonEnabled,
      phoneLoading: phoneLoading,
      error: error,
    );
  }
}

/// @nodoc
const $PhoneLoginState = _$PhoneLoginStateTearOff();

/// @nodoc
mixin _$PhoneLoginState {
  String? get codeCountDown => throw _privateConstructorUsedError;
  bool get isButtonEnabled => throw _privateConstructorUsedError;
  bool get phoneLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneLoginStateCopyWith<PhoneLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneLoginStateCopyWith<$Res> {
  factory $PhoneLoginStateCopyWith(
          PhoneLoginState value, $Res Function(PhoneLoginState) then) =
      _$PhoneLoginStateCopyWithImpl<$Res>;
  $Res call(
      {String? codeCountDown,
      bool isButtonEnabled,
      bool phoneLoading,
      String? error});
}

/// @nodoc
class _$PhoneLoginStateCopyWithImpl<$Res>
    implements $PhoneLoginStateCopyWith<$Res> {
  _$PhoneLoginStateCopyWithImpl(this._value, this._then);

  final PhoneLoginState _value;
  // ignore: unused_field
  final $Res Function(PhoneLoginState) _then;

  @override
  $Res call({
    Object? codeCountDown = freezed,
    Object? isButtonEnabled = freezed,
    Object? phoneLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      codeCountDown: codeCountDown == freezed
          ? _value.codeCountDown
          : codeCountDown // ignore: cast_nullable_to_non_nullable
              as String?,
      isButtonEnabled: isButtonEnabled == freezed
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneLoading: phoneLoading == freezed
          ? _value.phoneLoading
          : phoneLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PhoneLoginStateCopyWith<$Res>
    implements $PhoneLoginStateCopyWith<$Res> {
  factory _$PhoneLoginStateCopyWith(
          _PhoneLoginState value, $Res Function(_PhoneLoginState) then) =
      __$PhoneLoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? codeCountDown,
      bool isButtonEnabled,
      bool phoneLoading,
      String? error});
}

/// @nodoc
class __$PhoneLoginStateCopyWithImpl<$Res>
    extends _$PhoneLoginStateCopyWithImpl<$Res>
    implements _$PhoneLoginStateCopyWith<$Res> {
  __$PhoneLoginStateCopyWithImpl(
      _PhoneLoginState _value, $Res Function(_PhoneLoginState) _then)
      : super(_value, (v) => _then(v as _PhoneLoginState));

  @override
  _PhoneLoginState get _value => super._value as _PhoneLoginState;

  @override
  $Res call({
    Object? codeCountDown = freezed,
    Object? isButtonEnabled = freezed,
    Object? phoneLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_PhoneLoginState(
      codeCountDown: codeCountDown == freezed
          ? _value.codeCountDown
          : codeCountDown // ignore: cast_nullable_to_non_nullable
              as String?,
      isButtonEnabled: isButtonEnabled == freezed
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneLoading: phoneLoading == freezed
          ? _value.phoneLoading
          : phoneLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PhoneLoginState implements _PhoneLoginState {
  const _$_PhoneLoginState(
      {this.codeCountDown,
      this.isButtonEnabled = false,
      this.phoneLoading = false,
      this.error});

  @override
  final String? codeCountDown;
  @JsonKey()
  @override
  final bool isButtonEnabled;
  @JsonKey()
  @override
  final bool phoneLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'PhoneLoginState(codeCountDown: $codeCountDown, isButtonEnabled: $isButtonEnabled, phoneLoading: $phoneLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhoneLoginState &&
            const DeepCollectionEquality()
                .equals(other.codeCountDown, codeCountDown) &&
            const DeepCollectionEquality()
                .equals(other.isButtonEnabled, isButtonEnabled) &&
            const DeepCollectionEquality()
                .equals(other.phoneLoading, phoneLoading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(codeCountDown),
      const DeepCollectionEquality().hash(isButtonEnabled),
      const DeepCollectionEquality().hash(phoneLoading),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$PhoneLoginStateCopyWith<_PhoneLoginState> get copyWith =>
      __$PhoneLoginStateCopyWithImpl<_PhoneLoginState>(this, _$identity);
}

abstract class _PhoneLoginState implements PhoneLoginState {
  const factory _PhoneLoginState(
      {String? codeCountDown,
      bool isButtonEnabled,
      bool phoneLoading,
      String? error}) = _$_PhoneLoginState;

  @override
  String? get codeCountDown;
  @override
  bool get isButtonEnabled;
  @override
  bool get phoneLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$PhoneLoginStateCopyWith<_PhoneLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

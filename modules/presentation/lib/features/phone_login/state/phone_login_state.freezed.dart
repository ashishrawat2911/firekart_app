// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$PhoneLoginStateCopyWithImpl<$Res, PhoneLoginState>;
  @useResult
  $Res call(
      {String? codeCountDown,
      bool isButtonEnabled,
      bool phoneLoading,
      String? error});
}

/// @nodoc
class _$PhoneLoginStateCopyWithImpl<$Res, $Val extends PhoneLoginState>
    implements $PhoneLoginStateCopyWith<$Res> {
  _$PhoneLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeCountDown = freezed,
    Object? isButtonEnabled = null,
    Object? phoneLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      codeCountDown: freezed == codeCountDown
          ? _value.codeCountDown
          : codeCountDown // ignore: cast_nullable_to_non_nullable
              as String?,
      isButtonEnabled: null == isButtonEnabled
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneLoading: null == phoneLoading
          ? _value.phoneLoading
          : phoneLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneLoginStateCopyWith<$Res>
    implements $PhoneLoginStateCopyWith<$Res> {
  factory _$$_PhoneLoginStateCopyWith(
          _$_PhoneLoginState value, $Res Function(_$_PhoneLoginState) then) =
      __$$_PhoneLoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? codeCountDown,
      bool isButtonEnabled,
      bool phoneLoading,
      String? error});
}

/// @nodoc
class __$$_PhoneLoginStateCopyWithImpl<$Res>
    extends _$PhoneLoginStateCopyWithImpl<$Res, _$_PhoneLoginState>
    implements _$$_PhoneLoginStateCopyWith<$Res> {
  __$$_PhoneLoginStateCopyWithImpl(
      _$_PhoneLoginState _value, $Res Function(_$_PhoneLoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeCountDown = freezed,
    Object? isButtonEnabled = null,
    Object? phoneLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$_PhoneLoginState(
      codeCountDown: freezed == codeCountDown
          ? _value.codeCountDown
          : codeCountDown // ignore: cast_nullable_to_non_nullable
              as String?,
      isButtonEnabled: null == isButtonEnabled
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneLoading: null == phoneLoading
          ? _value.phoneLoading
          : phoneLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
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
  @override
  @JsonKey()
  final bool isButtonEnabled;
  @override
  @JsonKey()
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
            other is _$_PhoneLoginState &&
            (identical(other.codeCountDown, codeCountDown) ||
                other.codeCountDown == codeCountDown) &&
            (identical(other.isButtonEnabled, isButtonEnabled) ||
                other.isButtonEnabled == isButtonEnabled) &&
            (identical(other.phoneLoading, phoneLoading) ||
                other.phoneLoading == phoneLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, codeCountDown, isButtonEnabled, phoneLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneLoginStateCopyWith<_$_PhoneLoginState> get copyWith =>
      __$$_PhoneLoginStateCopyWithImpl<_$_PhoneLoginState>(this, _$identity);
}

abstract class _PhoneLoginState implements PhoneLoginState {
  const factory _PhoneLoginState(
      {final String? codeCountDown,
      final bool isButtonEnabled,
      final bool phoneLoading,
      final String? error}) = _$_PhoneLoginState;

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
  _$$_PhoneLoginStateCopyWith<_$_PhoneLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

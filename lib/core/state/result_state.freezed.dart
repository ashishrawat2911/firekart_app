// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() reLoading,
    required TResult Function(T data) data,
    required TResult Function(String error) error,
    required TResult Function(T data, String error) unNotifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? reLoading,
    TResult? Function(T data)? data,
    TResult? Function(String error)? error,
    TResult? Function(T data, String error)? unNotifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ReLoading<T> value) reLoading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Error<T> value) error,
    required TResult Function(UnNotifiedError<T> value) unNotifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ReLoading<T> value)? reLoading,
    TResult? Function(Data<T> value)? data,
    TResult? Function(Error<T> value)? error,
    TResult? Function(UnNotifiedError<T> value)? unNotifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<T, $Res> {
  factory $ResultStateCopyWith(
          ResultState<T> value, $Res Function(ResultState<T>) then) =
      _$ResultStateCopyWithImpl<T, $Res, ResultState<T>>;
}

/// @nodoc
class _$ResultStateCopyWithImpl<T, $Res, $Val extends ResultState<T>>
    implements $ResultStateCopyWith<T, $Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleCopyWith<T, $Res> {
  factory _$$IdleCopyWith(_$Idle<T> value, $Res Function(_$Idle<T>) then) =
      __$$IdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IdleCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$Idle<T>>
    implements _$$IdleCopyWith<T, $Res> {
  __$$IdleCopyWithImpl(_$Idle<T> _value, $Res Function(_$Idle<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Idle<T> implements Idle<T> {
  const _$Idle();

  @override
  String toString() {
    return 'ResultState<$T>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Idle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() reLoading,
    required TResult Function(T data) data,
    required TResult Function(String error) error,
    required TResult Function(T data, String error) unNotifiedError,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? reLoading,
    TResult? Function(T data)? data,
    TResult? Function(String error)? error,
    TResult? Function(T data, String error)? unNotifiedError,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ReLoading<T> value) reLoading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Error<T> value) error,
    required TResult Function(UnNotifiedError<T> value) unNotifiedError,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ReLoading<T> value)? reLoading,
    TResult? Function(Data<T> value)? data,
    TResult? Function(Error<T> value)? error,
    TResult? Function(UnNotifiedError<T> value)? unNotifiedError,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T> implements ResultState<T> {
  const factory Idle() = _$Idle<T>;
}

/// @nodoc
abstract class _$$LoadingCopyWith<T, $Res> {
  factory _$$LoadingCopyWith(
          _$Loading<T> value, $Res Function(_$Loading<T>) then) =
      __$$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$Loading<T>>
    implements _$$LoadingCopyWith<T, $Res> {
  __$$LoadingCopyWithImpl(
      _$Loading<T> _value, $Res Function(_$Loading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading<T> implements Loading<T> {
  const _$Loading();

  @override
  String toString() {
    return 'ResultState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() reLoading,
    required TResult Function(T data) data,
    required TResult Function(String error) error,
    required TResult Function(T data, String error) unNotifiedError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? reLoading,
    TResult? Function(T data)? data,
    TResult? Function(String error)? error,
    TResult? Function(T data, String error)? unNotifiedError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ReLoading<T> value) reLoading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Error<T> value) error,
    required TResult Function(UnNotifiedError<T> value) unNotifiedError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ReLoading<T> value)? reLoading,
    TResult? Function(Data<T> value)? data,
    TResult? Function(Error<T> value)? error,
    TResult? Function(UnNotifiedError<T> value)? unNotifiedError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements ResultState<T> {
  const factory Loading() = _$Loading<T>;
}

/// @nodoc
abstract class _$$ReLoadingCopyWith<T, $Res> {
  factory _$$ReLoadingCopyWith(
          _$ReLoading<T> value, $Res Function(_$ReLoading<T>) then) =
      __$$ReLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ReLoadingCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$ReLoading<T>>
    implements _$$ReLoadingCopyWith<T, $Res> {
  __$$ReLoadingCopyWithImpl(
      _$ReLoading<T> _value, $Res Function(_$ReLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReLoading<T> implements ReLoading<T> {
  const _$ReLoading();

  @override
  String toString() {
    return 'ResultState<$T>.reLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() reLoading,
    required TResult Function(T data) data,
    required TResult Function(String error) error,
    required TResult Function(T data, String error) unNotifiedError,
  }) {
    return reLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? reLoading,
    TResult? Function(T data)? data,
    TResult? Function(String error)? error,
    TResult? Function(T data, String error)? unNotifiedError,
  }) {
    return reLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (reLoading != null) {
      return reLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ReLoading<T> value) reLoading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Error<T> value) error,
    required TResult Function(UnNotifiedError<T> value) unNotifiedError,
  }) {
    return reLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ReLoading<T> value)? reLoading,
    TResult? Function(Data<T> value)? data,
    TResult? Function(Error<T> value)? error,
    TResult? Function(UnNotifiedError<T> value)? unNotifiedError,
  }) {
    return reLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (reLoading != null) {
      return reLoading(this);
    }
    return orElse();
  }
}

abstract class ReLoading<T> implements ResultState<T> {
  const factory ReLoading() = _$ReLoading<T>;
}

/// @nodoc
abstract class _$$DataCopyWith<T, $Res> {
  factory _$$DataCopyWith(_$Data<T> value, $Res Function(_$Data<T>) then) =
      __$$DataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DataCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$Data<T>>
    implements _$$DataCopyWith<T, $Res> {
  __$$DataCopyWithImpl(_$Data<T> _value, $Res Function(_$Data<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Data<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Data<T> implements Data<T> {
  const _$Data({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'ResultState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCopyWith<T, _$Data<T>> get copyWith =>
      __$$DataCopyWithImpl<T, _$Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() reLoading,
    required TResult Function(T data) data,
    required TResult Function(String error) error,
    required TResult Function(T data, String error) unNotifiedError,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? reLoading,
    TResult? Function(T data)? data,
    TResult? Function(String error)? error,
    TResult? Function(T data, String error)? unNotifiedError,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ReLoading<T> value) reLoading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Error<T> value) error,
    required TResult Function(UnNotifiedError<T> value) unNotifiedError,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ReLoading<T> value)? reLoading,
    TResult? Function(Data<T> value)? data,
    TResult? Function(Error<T> value)? error,
    TResult? Function(UnNotifiedError<T> value)? unNotifiedError,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data<T> implements ResultState<T> {
  const factory Data({required final T data}) = _$Data<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$DataCopyWith<T, _$Data<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<T, $Res> {
  factory _$$ErrorCopyWith(_$Error<T> value, $Res Function(_$Error<T>) then) =
      __$$ErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$Error<T>>
    implements _$$ErrorCopyWith<T, $Res> {
  __$$ErrorCopyWithImpl(_$Error<T> _value, $Res Function(_$Error<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Error<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error<T> implements Error<T> {
  const _$Error({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ResultState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<T, _$Error<T>> get copyWith =>
      __$$ErrorCopyWithImpl<T, _$Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() reLoading,
    required TResult Function(T data) data,
    required TResult Function(String error) error,
    required TResult Function(T data, String error) unNotifiedError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? reLoading,
    TResult? Function(T data)? data,
    TResult? Function(String error)? error,
    TResult? Function(T data, String error)? unNotifiedError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ReLoading<T> value) reLoading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Error<T> value) error,
    required TResult Function(UnNotifiedError<T> value) unNotifiedError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ReLoading<T> value)? reLoading,
    TResult? Function(Data<T> value)? data,
    TResult? Function(Error<T> value)? error,
    TResult? Function(UnNotifiedError<T> value)? unNotifiedError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements ResultState<T> {
  const factory Error({required final String error}) = _$Error<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<T, _$Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnNotifiedErrorCopyWith<T, $Res> {
  factory _$$UnNotifiedErrorCopyWith(_$UnNotifiedError<T> value,
          $Res Function(_$UnNotifiedError<T>) then) =
      __$$UnNotifiedErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, String error});
}

/// @nodoc
class __$$UnNotifiedErrorCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$UnNotifiedError<T>>
    implements _$$UnNotifiedErrorCopyWith<T, $Res> {
  __$$UnNotifiedErrorCopyWithImpl(
      _$UnNotifiedError<T> _value, $Res Function(_$UnNotifiedError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = null,
  }) {
    return _then(_$UnNotifiedError<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnNotifiedError<T> implements UnNotifiedError<T> {
  const _$UnNotifiedError({required this.data, required this.error});

  @override
  final T data;
  @override
  final String error;

  @override
  String toString() {
    return 'ResultState<$T>.unNotifiedError(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnNotifiedError<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnNotifiedErrorCopyWith<T, _$UnNotifiedError<T>> get copyWith =>
      __$$UnNotifiedErrorCopyWithImpl<T, _$UnNotifiedError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() reLoading,
    required TResult Function(T data) data,
    required TResult Function(String error) error,
    required TResult Function(T data, String error) unNotifiedError,
  }) {
    return unNotifiedError(this.data, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? reLoading,
    TResult? Function(T data)? data,
    TResult? Function(String error)? error,
    TResult? Function(T data, String error)? unNotifiedError,
  }) {
    return unNotifiedError?.call(this.data, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (unNotifiedError != null) {
      return unNotifiedError(this.data, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ReLoading<T> value) reLoading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Error<T> value) error,
    required TResult Function(UnNotifiedError<T> value) unNotifiedError,
  }) {
    return unNotifiedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ReLoading<T> value)? reLoading,
    TResult? Function(Data<T> value)? data,
    TResult? Function(Error<T> value)? error,
    TResult? Function(UnNotifiedError<T> value)? unNotifiedError,
  }) {
    return unNotifiedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
    required TResult orElse(),
  }) {
    if (unNotifiedError != null) {
      return unNotifiedError(this);
    }
    return orElse();
  }
}

abstract class UnNotifiedError<T> implements ResultState<T> {
  const factory UnNotifiedError(
      {required final T data,
      required final String error}) = _$UnNotifiedError<T>;

  T get data;
  String get error;
  @JsonKey(ignore: true)
  _$$UnNotifiedErrorCopyWith<T, _$UnNotifiedError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

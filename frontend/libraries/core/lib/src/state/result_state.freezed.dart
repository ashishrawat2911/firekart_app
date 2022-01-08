// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultStateTearOff {
  const _$ResultStateTearOff();

  Idle<T> idle<T>() {
    return Idle<T>();
  }

  Loading<T> loading<T>() {
    return Loading<T>();
  }

  ReLoading<T> reLoading<T>() {
    return ReLoading<T>();
  }

  Data<T> data<T>({required T data}) {
    return Data<T>(
      data: data,
    );
  }

  Error<T> error<T>({required String error}) {
    return Error<T>(
      error: error,
    );
  }

  UnNotifiedError<T> unNotifiedError<T>(
      {required T data, required String error}) {
    return UnNotifiedError<T>(
      data: data,
      error: error,
    );
  }
}

/// @nodoc
const $ResultState = _$ResultStateTearOff();

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
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
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
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
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
      _$ResultStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResultStateCopyWithImpl<T, $Res>
    implements $ResultStateCopyWith<T, $Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  final ResultState<T> _value;
  // ignore: unused_field
  final $Res Function(ResultState<T>) _then;
}

/// @nodoc
abstract class $IdleCopyWith<T, $Res> {
  factory $IdleCopyWith(Idle<T> value, $Res Function(Idle<T>) then) =
      _$IdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<T, $Res> extends _$ResultStateCopyWithImpl<T, $Res>
    implements $IdleCopyWith<T, $Res> {
  _$IdleCopyWithImpl(Idle<T> _value, $Res Function(Idle<T>) _then)
      : super(_value, (v) => _then(v as Idle<T>));

  @override
  Idle<T> get _value => super._value as Idle<T>;
}

/// @nodoc

class _$Idle<T> with DiagnosticableTreeMixin implements Idle<T> {
  const _$Idle();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResultState<$T>.idle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Idle<T>);
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
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
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
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
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
abstract class $LoadingCopyWith<T, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) then) =
      _$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<T, $Res> extends _$ResultStateCopyWithImpl<T, $Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(Loading<T> _value, $Res Function(Loading<T>) _then)
      : super(_value, (v) => _then(v as Loading<T>));

  @override
  Loading<T> get _value => super._value as Loading<T>;
}

/// @nodoc

class _$Loading<T> with DiagnosticableTreeMixin implements Loading<T> {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResultState<$T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading<T>);
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
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
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
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
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
abstract class $ReLoadingCopyWith<T, $Res> {
  factory $ReLoadingCopyWith(
          ReLoading<T> value, $Res Function(ReLoading<T>) then) =
      _$ReLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ReLoadingCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res>
    implements $ReLoadingCopyWith<T, $Res> {
  _$ReLoadingCopyWithImpl(
      ReLoading<T> _value, $Res Function(ReLoading<T>) _then)
      : super(_value, (v) => _then(v as ReLoading<T>));

  @override
  ReLoading<T> get _value => super._value as ReLoading<T>;
}

/// @nodoc

class _$ReLoading<T> with DiagnosticableTreeMixin implements ReLoading<T> {
  const _$ReLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.reLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResultState<$T>.reLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReLoading<T>);
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
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
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
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
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
abstract class $DataCopyWith<T, $Res> {
  factory $DataCopyWith(Data<T> value, $Res Function(Data<T>) then) =
      _$DataCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$DataCopyWithImpl<T, $Res> extends _$ResultStateCopyWithImpl<T, $Res>
    implements $DataCopyWith<T, $Res> {
  _$DataCopyWithImpl(Data<T> _value, $Res Function(Data<T>) _then)
      : super(_value, (v) => _then(v as Data<T>));

  @override
  Data<T> get _value => super._value as Data<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Data<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Data<T> with DiagnosticableTreeMixin implements Data<T> {
  const _$Data({required this.data});

  @override
  final T data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.data(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState<$T>.data'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<T, Data<T>> get copyWith =>
      _$DataCopyWithImpl<T, Data<T>>(this, _$identity);

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
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
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
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
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
  const factory Data({required T data}) = _$Data<T>;

  T get data;
  @JsonKey(ignore: true)
  $DataCopyWith<T, Data<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<T, $Res> {
  factory $ErrorCopyWith(Error<T> value, $Res Function(Error<T>) then) =
      _$ErrorCopyWithImpl<T, $Res>;
  $Res call({String error});
}

/// @nodoc
class _$ErrorCopyWithImpl<T, $Res> extends _$ResultStateCopyWithImpl<T, $Res>
    implements $ErrorCopyWith<T, $Res> {
  _$ErrorCopyWithImpl(Error<T> _value, $Res Function(Error<T>) _then)
      : super(_value, (v) => _then(v as Error<T>));

  @override
  Error<T> get _value => super._value as Error<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error<T>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error<T> with DiagnosticableTreeMixin implements Error<T> {
  const _$Error({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState<$T>.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<T, Error<T>> get copyWith =>
      _$ErrorCopyWithImpl<T, Error<T>>(this, _$identity);

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
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
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
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
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
  const factory Error({required String error}) = _$Error<T>;

  String get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<T, Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnNotifiedErrorCopyWith<T, $Res> {
  factory $UnNotifiedErrorCopyWith(
          UnNotifiedError<T> value, $Res Function(UnNotifiedError<T>) then) =
      _$UnNotifiedErrorCopyWithImpl<T, $Res>;
  $Res call({T data, String error});
}

/// @nodoc
class _$UnNotifiedErrorCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res>
    implements $UnNotifiedErrorCopyWith<T, $Res> {
  _$UnNotifiedErrorCopyWithImpl(
      UnNotifiedError<T> _value, $Res Function(UnNotifiedError<T>) _then)
      : super(_value, (v) => _then(v as UnNotifiedError<T>));

  @override
  UnNotifiedError<T> get _value => super._value as UnNotifiedError<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(UnNotifiedError<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnNotifiedError<T>
    with DiagnosticableTreeMixin
    implements UnNotifiedError<T> {
  const _$UnNotifiedError({required this.data, required this.error});

  @override
  final T data;
  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.unNotifiedError(data: $data, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState<$T>.unNotifiedError'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnNotifiedError<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $UnNotifiedErrorCopyWith<T, UnNotifiedError<T>> get copyWith =>
      _$UnNotifiedErrorCopyWithImpl<T, UnNotifiedError<T>>(this, _$identity);

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
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? reLoading,
    TResult Function(T data)? data,
    TResult Function(String error)? error,
    TResult Function(T data, String error)? unNotifiedError,
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
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ReLoading<T> value)? reLoading,
    TResult Function(Data<T> value)? data,
    TResult Function(Error<T> value)? error,
    TResult Function(UnNotifiedError<T> value)? unNotifiedError,
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
  const factory UnNotifiedError({required T data, required String error}) =
      _$UnNotifiedError<T>;

  T get data;
  String get error;
  @JsonKey(ignore: true)
  $UnNotifiedErrorCopyWith<T, UnNotifiedError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

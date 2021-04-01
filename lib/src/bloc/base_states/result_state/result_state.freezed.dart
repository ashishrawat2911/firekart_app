// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ResultStateTearOff {
  const _$ResultStateTearOff();

// ignore: unused_element
  Idle<T> idle<T>() {
    return Idle<T>();
  }

// ignore: unused_element
  Loading<T> loading<T>() {
    return Loading<T>();
  }

// ignore: unused_element
  ReLoading<T> reLoading<T>() {
    return ReLoading<T>();
  }

// ignore: unused_element
  Data<T> data<T>({@required T data}) {
    return Data<T>(
      data: data,
    );
  }

// ignore: unused_element
  Error<T> error<T>({@required String error}) {
    return Error<T>(
      error: error,
    );
  }

// ignore: unused_element
  UnNotifiedError<T> unNotifiedError<T>(
      {@required T data, @required String error}) {
    return UnNotifiedError<T>(
      data: data,
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResultState = _$ResultStateTearOff();

/// @nodoc
mixin _$ResultState<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(Data<T> value),
    @required Result error(Error<T> value),
    @required Result unNotifiedError(UnNotifiedError<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(Data<T> value),
    Result error(Error<T> value),
    Result unNotifiedError(UnNotifiedError<T> value),
    @required Result orElse(),
  });
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
    return identical(this, other) || (other is Idle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(Data<T> value),
    @required Result error(Error<T> value),
    @required Result unNotifiedError(UnNotifiedError<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(Data<T> value),
    Result error(Error<T> value),
    Result unNotifiedError(UnNotifiedError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
    return identical(this, other) || (other is Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(Data<T> value),
    @required Result error(Error<T> value),
    @required Result unNotifiedError(UnNotifiedError<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(Data<T> value),
    Result error(Error<T> value),
    Result unNotifiedError(UnNotifiedError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
    return identical(this, other) || (other is ReLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return reLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reLoading != null) {
      return reLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(Data<T> value),
    @required Result error(Error<T> value),
    @required Result unNotifiedError(UnNotifiedError<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return reLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(Data<T> value),
    Result error(Error<T> value),
    Result unNotifiedError(UnNotifiedError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
    Object data = freezed,
  }) {
    return _then(Data<T>(
      data: data == freezed ? _value.data : data as T,
    ));
  }
}

/// @nodoc
class _$Data<T> with DiagnosticableTreeMixin implements Data<T> {
  const _$Data({@required this.data}) : assert(data != null);

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
        (other is Data<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $DataCopyWith<T, Data<T>> get copyWith =>
      _$DataCopyWithImpl<T, Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(Data<T> value),
    @required Result error(Error<T> value),
    @required Result unNotifiedError(UnNotifiedError<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(Data<T> value),
    Result error(Error<T> value),
    Result unNotifiedError(UnNotifiedError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data<T> implements ResultState<T> {
  const factory Data({@required T data}) = _$Data<T>;

  T get data;
  $DataCopyWith<T, Data<T>> get copyWith;
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
    Object error = freezed,
  }) {
    return _then(Error<T>(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$Error<T> with DiagnosticableTreeMixin implements Error<T> {
  const _$Error({@required this.error}) : assert(error != null);

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
        (other is Error<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ErrorCopyWith<T, Error<T>> get copyWith =>
      _$ErrorCopyWithImpl<T, Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(Data<T> value),
    @required Result error(Error<T> value),
    @required Result unNotifiedError(UnNotifiedError<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(Data<T> value),
    Result error(Error<T> value),
    Result unNotifiedError(UnNotifiedError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements ResultState<T> {
  const factory Error({@required String error}) = _$Error<T>;

  String get error;
  $ErrorCopyWith<T, Error<T>> get copyWith;
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
    Object data = freezed,
    Object error = freezed,
  }) {
    return _then(UnNotifiedError<T>(
      data: data == freezed ? _value.data : data as T,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$UnNotifiedError<T>
    with DiagnosticableTreeMixin
    implements UnNotifiedError<T> {
  const _$UnNotifiedError({@required this.data, @required this.error})
      : assert(data != null),
        assert(error != null);

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
        (other is UnNotifiedError<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error);

  @override
  $UnNotifiedErrorCopyWith<T, UnNotifiedError<T>> get copyWith =>
      _$UnNotifiedErrorCopyWithImpl<T, UnNotifiedError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result reLoading(),
    @required Result data(T data),
    @required Result error(String error),
    @required Result unNotifiedError(T data, String error),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return unNotifiedError(this.data, this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result reLoading(),
    Result data(T data),
    Result error(String error),
    Result unNotifiedError(T data, String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unNotifiedError != null) {
      return unNotifiedError(this.data, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result reLoading(ReLoading<T> value),
    @required Result data(Data<T> value),
    @required Result error(Error<T> value),
    @required Result unNotifiedError(UnNotifiedError<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(reLoading != null);
    assert(data != null);
    assert(error != null);
    assert(unNotifiedError != null);
    return unNotifiedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result reLoading(ReLoading<T> value),
    Result data(Data<T> value),
    Result error(Error<T> value),
    Result unNotifiedError(UnNotifiedError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unNotifiedError != null) {
      return unNotifiedError(this);
    }
    return orElse();
  }
}

abstract class UnNotifiedError<T> implements ResultState<T> {
  const factory UnNotifiedError({@required T data, @required String error}) =
      _$UnNotifiedError<T>;

  T get data;
  String get error;
  $UnNotifiedErrorCopyWith<T, UnNotifiedError<T>> get copyWith;
}

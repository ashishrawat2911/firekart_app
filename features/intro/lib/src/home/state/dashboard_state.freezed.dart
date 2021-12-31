// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DashboardStateTearOff {
  const _$DashboardStateTearOff();

  _DashboardState call(
      {ResultState<List<ProductModel>> dealOfTheDay = const Idle(),
      ResultState<List<ProductModel>> onSale = const Idle(),
      ResultState<List<ProductModel>> topProducts = const Idle()}) {
    return _DashboardState(
      dealOfTheDay: dealOfTheDay,
      onSale: onSale,
      topProducts: topProducts,
    );
  }
}

/// @nodoc
const $DashboardState = _$DashboardStateTearOff();

/// @nodoc
mixin _$DashboardState {
  ResultState<List<ProductModel>> get dealOfTheDay =>
      throw _privateConstructorUsedError;
  ResultState<List<ProductModel>> get onSale =>
      throw _privateConstructorUsedError;
  ResultState<List<ProductModel>> get topProducts =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<List<ProductModel>> dealOfTheDay,
      ResultState<List<ProductModel>> onSale,
      ResultState<List<ProductModel>> topProducts});

  $ResultStateCopyWith<List<ProductModel>, $Res> get dealOfTheDay;
  $ResultStateCopyWith<List<ProductModel>, $Res> get onSale;
  $ResultStateCopyWith<List<ProductModel>, $Res> get topProducts;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;

  @override
  $Res call({
    Object? dealOfTheDay = freezed,
    Object? onSale = freezed,
    Object? topProducts = freezed,
  }) {
    return _then(_value.copyWith(
      dealOfTheDay: dealOfTheDay == freezed
          ? _value.dealOfTheDay
          : dealOfTheDay // ignore: cast_nullable_to_non_nullable
              as ResultState<List<ProductModel>>,
      onSale: onSale == freezed
          ? _value.onSale
          : onSale // ignore: cast_nullable_to_non_nullable
              as ResultState<List<ProductModel>>,
      topProducts: topProducts == freezed
          ? _value.topProducts
          : topProducts // ignore: cast_nullable_to_non_nullable
              as ResultState<List<ProductModel>>,
    ));
  }

  @override
  $ResultStateCopyWith<List<ProductModel>, $Res> get dealOfTheDay {
    return $ResultStateCopyWith<List<ProductModel>, $Res>(_value.dealOfTheDay,
        (value) {
      return _then(_value.copyWith(dealOfTheDay: value));
    });
  }

  @override
  $ResultStateCopyWith<List<ProductModel>, $Res> get onSale {
    return $ResultStateCopyWith<List<ProductModel>, $Res>(_value.onSale,
        (value) {
      return _then(_value.copyWith(onSale: value));
    });
  }

  @override
  $ResultStateCopyWith<List<ProductModel>, $Res> get topProducts {
    return $ResultStateCopyWith<List<ProductModel>, $Res>(_value.topProducts,
        (value) {
      return _then(_value.copyWith(topProducts: value));
    });
  }
}

/// @nodoc
abstract class _$DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(
          _DashboardState value, $Res Function(_DashboardState) then) =
      __$DashboardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<List<ProductModel>> dealOfTheDay,
      ResultState<List<ProductModel>> onSale,
      ResultState<List<ProductModel>> topProducts});

  @override
  $ResultStateCopyWith<List<ProductModel>, $Res> get dealOfTheDay;
  @override
  $ResultStateCopyWith<List<ProductModel>, $Res> get onSale;
  @override
  $ResultStateCopyWith<List<ProductModel>, $Res> get topProducts;
}

/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(
      _DashboardState _value, $Res Function(_DashboardState) _then)
      : super(_value, (v) => _then(v as _DashboardState));

  @override
  _DashboardState get _value => super._value as _DashboardState;

  @override
  $Res call({
    Object? dealOfTheDay = freezed,
    Object? onSale = freezed,
    Object? topProducts = freezed,
  }) {
    return _then(_DashboardState(
      dealOfTheDay: dealOfTheDay == freezed
          ? _value.dealOfTheDay
          : dealOfTheDay // ignore: cast_nullable_to_non_nullable
              as ResultState<List<ProductModel>>,
      onSale: onSale == freezed
          ? _value.onSale
          : onSale // ignore: cast_nullable_to_non_nullable
              as ResultState<List<ProductModel>>,
      topProducts: topProducts == freezed
          ? _value.topProducts
          : topProducts // ignore: cast_nullable_to_non_nullable
              as ResultState<List<ProductModel>>,
    ));
  }
}

/// @nodoc

class _$_DashboardState implements _DashboardState {
  const _$_DashboardState(
      {this.dealOfTheDay = const Idle(),
      this.onSale = const Idle(),
      this.topProducts = const Idle()});

  @JsonKey()
  @override
  final ResultState<List<ProductModel>> dealOfTheDay;
  @JsonKey()
  @override
  final ResultState<List<ProductModel>> onSale;
  @JsonKey()
  @override
  final ResultState<List<ProductModel>> topProducts;

  @override
  String toString() {
    return 'DashboardState(dealOfTheDay: $dealOfTheDay, onSale: $onSale, topProducts: $topProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardState &&
            const DeepCollectionEquality()
                .equals(other.dealOfTheDay, dealOfTheDay) &&
            const DeepCollectionEquality().equals(other.onSale, onSale) &&
            const DeepCollectionEquality()
                .equals(other.topProducts, topProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dealOfTheDay),
      const DeepCollectionEquality().hash(onSale),
      const DeepCollectionEquality().hash(topProducts));

  @JsonKey(ignore: true)
  @override
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {ResultState<List<ProductModel>> dealOfTheDay,
      ResultState<List<ProductModel>> onSale,
      ResultState<List<ProductModel>> topProducts}) = _$_DashboardState;

  @override
  ResultState<List<ProductModel>> get dealOfTheDay;
  @override
  ResultState<List<ProductModel>> get onSale;
  @override
  ResultState<List<ProductModel>> get topProducts;
  @override
  @JsonKey(ignore: true)
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

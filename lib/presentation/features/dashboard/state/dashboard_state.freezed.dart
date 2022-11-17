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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  ResultState<List<Product>> get dealOfTheDay =>
      throw _privateConstructorUsedError;
  ResultState<List<Product>> get onSale => throw _privateConstructorUsedError;
  ResultState<List<Product>> get topProducts =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {ResultState<List<Product>> dealOfTheDay,
      ResultState<List<Product>> onSale,
      ResultState<List<Product>> topProducts});

  $ResultStateCopyWith<List<Product>, $Res> get dealOfTheDay;
  $ResultStateCopyWith<List<Product>, $Res> get onSale;
  $ResultStateCopyWith<List<Product>, $Res> get topProducts;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dealOfTheDay = null,
    Object? onSale = null,
    Object? topProducts = null,
  }) {
    return _then(_value.copyWith(
      dealOfTheDay: null == dealOfTheDay
          ? _value.dealOfTheDay
          : dealOfTheDay // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Product>>,
      onSale: null == onSale
          ? _value.onSale
          : onSale // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Product>>,
      topProducts: null == topProducts
          ? _value.topProducts
          : topProducts // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Product>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<List<Product>, $Res> get dealOfTheDay {
    return $ResultStateCopyWith<List<Product>, $Res>(_value.dealOfTheDay,
        (value) {
      return _then(_value.copyWith(dealOfTheDay: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<List<Product>, $Res> get onSale {
    return $ResultStateCopyWith<List<Product>, $Res>(_value.onSale, (value) {
      return _then(_value.copyWith(onSale: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<List<Product>, $Res> get topProducts {
    return $ResultStateCopyWith<List<Product>, $Res>(_value.topProducts,
        (value) {
      return _then(_value.copyWith(topProducts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_DashboardStateCopyWith(
          _$_DashboardState value, $Res Function(_$_DashboardState) then) =
      __$$_DashboardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResultState<List<Product>> dealOfTheDay,
      ResultState<List<Product>> onSale,
      ResultState<List<Product>> topProducts});

  @override
  $ResultStateCopyWith<List<Product>, $Res> get dealOfTheDay;
  @override
  $ResultStateCopyWith<List<Product>, $Res> get onSale;
  @override
  $ResultStateCopyWith<List<Product>, $Res> get topProducts;
}

/// @nodoc
class __$$_DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_DashboardState>
    implements _$$_DashboardStateCopyWith<$Res> {
  __$$_DashboardStateCopyWithImpl(
      _$_DashboardState _value, $Res Function(_$_DashboardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dealOfTheDay = null,
    Object? onSale = null,
    Object? topProducts = null,
  }) {
    return _then(_$_DashboardState(
      dealOfTheDay: null == dealOfTheDay
          ? _value.dealOfTheDay
          : dealOfTheDay // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Product>>,
      onSale: null == onSale
          ? _value.onSale
          : onSale // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Product>>,
      topProducts: null == topProducts
          ? _value.topProducts
          : topProducts // ignore: cast_nullable_to_non_nullable
              as ResultState<List<Product>>,
    ));
  }
}

/// @nodoc

class _$_DashboardState implements _DashboardState {
  const _$_DashboardState(
      {this.dealOfTheDay = const Idle(),
      this.onSale = const Idle(),
      this.topProducts = const Idle()});

  @override
  @JsonKey()
  final ResultState<List<Product>> dealOfTheDay;
  @override
  @JsonKey()
  final ResultState<List<Product>> onSale;
  @override
  @JsonKey()
  final ResultState<List<Product>> topProducts;

  @override
  String toString() {
    return 'DashboardState(dealOfTheDay: $dealOfTheDay, onSale: $onSale, topProducts: $topProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardState &&
            (identical(other.dealOfTheDay, dealOfTheDay) ||
                other.dealOfTheDay == dealOfTheDay) &&
            (identical(other.onSale, onSale) || other.onSale == onSale) &&
            (identical(other.topProducts, topProducts) ||
                other.topProducts == topProducts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dealOfTheDay, onSale, topProducts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      __$$_DashboardStateCopyWithImpl<_$_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {final ResultState<List<Product>> dealOfTheDay,
      final ResultState<List<Product>> onSale,
      final ResultState<List<Product>> topProducts}) = _$_DashboardState;

  @override
  ResultState<List<Product>> get dealOfTheDay;
  @override
  ResultState<List<Product>> get onSale;
  @override
  ResultState<List<Product>> get topProducts;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductSearchState {
  List<Product> get productList => throw _privateConstructorUsedError;

  bool get loading => throw _privateConstructorUsedError;

  String? get otp => throw _privateConstructorUsedError;

  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSearchStateCopyWith<ProductSearchState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchStateCopyWith<$Res> {
  factory $ProductSearchStateCopyWith(ProductSearchState value, $Res Function(ProductSearchState) then) =
      _$ProductSearchStateCopyWithImpl<$Res>;

  $Res call({List<Product> productList, bool loading, String? otp, String? error});
}

/// @nodoc
class _$ProductSearchStateCopyWithImpl<$Res> implements $ProductSearchStateCopyWith<$Res> {
  _$ProductSearchStateCopyWithImpl(this._value, this._then);

  final ProductSearchState _value;

  // ignore: unused_field
  final $Res Function(ProductSearchState) _then;

  @override
  $Res call({
    Object? productList = freezed,
    Object? loading = freezed,
    Object? otp = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      productList: productList == freezed
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductSearchStateCopyWith<$Res> implements $ProductSearchStateCopyWith<$Res> {
  factory _$$_ProductSearchStateCopyWith(_$_ProductSearchState value, $Res Function(_$_ProductSearchState) then) =
      __$$_ProductSearchStateCopyWithImpl<$Res>;

  @override
  $Res call({List<Product> productList, bool loading, String? otp, String? error});
}

/// @nodoc
class __$$_ProductSearchStateCopyWithImpl<$Res> extends _$ProductSearchStateCopyWithImpl<$Res>
    implements _$$_ProductSearchStateCopyWith<$Res> {
  __$$_ProductSearchStateCopyWithImpl(_$_ProductSearchState _value, $Res Function(_$_ProductSearchState) _then)
      : super(_value, (v) => _then(v as _$_ProductSearchState));

  @override
  _$_ProductSearchState get _value => super._value as _$_ProductSearchState;

  @override
  $Res call({
    Object? productList = freezed,
    Object? loading = freezed,
    Object? otp = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ProductSearchState(
      productList: productList == freezed
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductSearchState implements _ProductSearchState {
  const _$_ProductSearchState({final List<Product> productList = const [], this.loading = false, this.otp, this.error})
      : _productList = productList;

  final List<Product> _productList;

  @override
  @JsonKey()
  List<Product> get productList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  final String? otp;
  @override
  final String? error;

  @override
  String toString() {
    return 'ProductSearchState(productList: $productList, loading: $loading, otp: $otp, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductSearchState &&
            const DeepCollectionEquality().equals(other._productList, _productList) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_productList),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ProductSearchStateCopyWith<_$_ProductSearchState> get copyWith =>
      __$$_ProductSearchStateCopyWithImpl<_$_ProductSearchState>(this, _$identity);
}

abstract class _ProductSearchState implements ProductSearchState {
  const factory _ProductSearchState(
      {final List<Product> productList,
      final bool loading,
      final String? otp,
      final String? error}) = _$_ProductSearchState;

  @override
  List<Product> get productList;

  @override
  bool get loading;

  @override
  String? get otp;

  @override
  String? get error;

  @override
  @JsonKey(ignore: true)
  _$$_ProductSearchStateCopyWith<_$_ProductSearchState> get copyWith => throw _privateConstructorUsedError;
}

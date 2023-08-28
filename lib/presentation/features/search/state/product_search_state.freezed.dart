// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  $ProductSearchStateCopyWith<ProductSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchStateCopyWith<$Res> {
  factory $ProductSearchStateCopyWith(
          ProductSearchState value, $Res Function(ProductSearchState) then) =
      _$ProductSearchStateCopyWithImpl<$Res, ProductSearchState>;
  @useResult
  $Res call(
      {List<Product> productList, bool loading, String? otp, String? error});
}

/// @nodoc
class _$ProductSearchStateCopyWithImpl<$Res, $Val extends ProductSearchState>
    implements $ProductSearchStateCopyWith<$Res> {
  _$ProductSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
    Object? loading = null,
    Object? otp = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductSearchStateCopyWith<$Res>
    implements $ProductSearchStateCopyWith<$Res> {
  factory _$$_ProductSearchStateCopyWith(_$_ProductSearchState value,
          $Res Function(_$_ProductSearchState) then) =
      __$$_ProductSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> productList, bool loading, String? otp, String? error});
}

/// @nodoc
class __$$_ProductSearchStateCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res, _$_ProductSearchState>
    implements _$$_ProductSearchStateCopyWith<$Res> {
  __$$_ProductSearchStateCopyWithImpl(
      _$_ProductSearchState _value, $Res Function(_$_ProductSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
    Object? loading = null,
    Object? otp = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ProductSearchState(
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductSearchState implements _ProductSearchState {
  const _$_ProductSearchState(
      {final List<Product> productList = const <Product>[],
      this.loading = false,
      this.otp,
      this.error})
      : _productList = productList;

  final List<Product> _productList;
  @override
  @JsonKey()
  List<Product> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
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
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_productList), loading, otp, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductSearchStateCopyWith<_$_ProductSearchState> get copyWith =>
      __$$_ProductSearchStateCopyWithImpl<_$_ProductSearchState>(
          this, _$identity);
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
  _$$_ProductSearchStateCopyWith<_$_ProductSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

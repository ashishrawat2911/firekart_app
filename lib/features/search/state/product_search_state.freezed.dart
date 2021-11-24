// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductSearchStateTearOff {
  const _$ProductSearchStateTearOff();

// ignore: unused_element
  Idle idle() {
    return const Idle();
  }

// ignore: unused_element
  ProductList productList(List<ProductModel> productList) {
    return ProductList(
      productList,
    );
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Error error() {
    return const Error();
  }
}

/// @nodoc
// ignore: unused_element
const $ProductSearchState = _$ProductSearchStateTearOff();

/// @nodoc
mixin _$ProductSearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result productList(List<ProductModel> productList),
    @required Result loading(),
    @required Result error(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result productList(List<ProductModel> productList),
    Result loading(),
    Result error(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result productList(ProductList value),
    @required Result loading(Loading value),
    @required Result error(Error value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result productList(ProductList value),
    Result loading(Loading value),
    Result error(Error value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProductSearchStateCopyWith<$Res> {
  factory $ProductSearchStateCopyWith(
          ProductSearchState value, $Res Function(ProductSearchState) then) =
      _$ProductSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductSearchStateCopyWithImpl<$Res>
    implements $ProductSearchStateCopyWith<$Res> {
  _$ProductSearchStateCopyWithImpl(this._value, this._then);

  final ProductSearchState _value;

  // ignore: unused_field
  final $Res Function(ProductSearchState) _then;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> extends _$ProductSearchStateCopyWithImpl<$Res>
    implements $IdleCopyWith<$Res> {
  _$IdleCopyWithImpl(Idle _value, $Res Function(Idle) _then)
      : super(_value, (v) => _then(v as Idle));

  @override
  Idle get _value => super._value as Idle;
}

/// @nodoc
class _$Idle implements Idle {
  const _$Idle();

  @override
  String toString() {
    return 'ProductSearchState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result productList(List<ProductModel> productList),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(idle != null);
    assert(productList != null);
    assert(loading != null);
    assert(error != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result productList(List<ProductModel> productList),
    Result loading(),
    Result error(),
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
    @required Result idle(Idle value),
    @required Result productList(ProductList value),
    @required Result loading(Loading value),
    @required Result error(Error value),
  }) {
    assert(idle != null);
    assert(productList != null);
    assert(loading != null);
    assert(error != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result productList(ProductList value),
    Result loading(Loading value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements ProductSearchState {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class $ProductListCopyWith<$Res> {
  factory $ProductListCopyWith(
          ProductList value, $Res Function(ProductList) then) =
      _$ProductListCopyWithImpl<$Res>;

  $Res call({List<ProductModel> productList});
}

/// @nodoc
class _$ProductListCopyWithImpl<$Res>
    extends _$ProductSearchStateCopyWithImpl<$Res>
    implements $ProductListCopyWith<$Res> {
  _$ProductListCopyWithImpl(
      ProductList _value, $Res Function(ProductList) _then)
      : super(_value, (v) => _then(v as ProductList));

  @override
  ProductList get _value => super._value as ProductList;

  @override
  $Res call({
    Object productList = freezed,
  }) {
    return _then(ProductList(
      productList == freezed
          ? _value.productList
          : productList as List<ProductModel>,
    ));
  }
}

/// @nodoc
class _$ProductList implements ProductList {
  const _$ProductList(this.productList) : assert(productList != null);

  @override
  final List<ProductModel> productList;

  @override
  String toString() {
    return 'ProductSearchState.productList(productList: $productList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductList &&
            (identical(other.productList, productList) ||
                const DeepCollectionEquality()
                    .equals(other.productList, productList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productList);

  @override
  $ProductListCopyWith<ProductList> get copyWith =>
      _$ProductListCopyWithImpl<ProductList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result productList(List<ProductModel> productList),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(idle != null);
    assert(productList != null);
    assert(loading != null);
    assert(error != null);
    return productList(this.productList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result productList(List<ProductModel> productList),
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (productList != null) {
      return productList(this.productList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result productList(ProductList value),
    @required Result loading(Loading value),
    @required Result error(Error value),
  }) {
    assert(idle != null);
    assert(productList != null);
    assert(loading != null);
    assert(error != null);
    return productList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result productList(ProductList value),
    Result loading(Loading value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (productList != null) {
      return productList(this);
    }
    return orElse();
  }
}

abstract class ProductList implements ProductSearchState {
  const factory ProductList(List<ProductModel> productList) = _$ProductList;

  List<ProductModel> get productList;

  $ProductListCopyWith<ProductList> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$ProductSearchStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ProductSearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result productList(List<ProductModel> productList),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(idle != null);
    assert(productList != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result productList(List<ProductModel> productList),
    Result loading(),
    Result error(),
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
    @required Result idle(Idle value),
    @required Result productList(ProductList value),
    @required Result loading(Loading value),
    @required Result error(Error value),
  }) {
    assert(idle != null);
    assert(productList != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result productList(ProductList value),
    Result loading(Loading value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ProductSearchState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$ProductSearchStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc
class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'ProductSearchState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result productList(List<ProductModel> productList),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(idle != null);
    assert(productList != null);
    assert(loading != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result productList(List<ProductModel> productList),
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result productList(ProductList value),
    @required Result loading(Loading value),
    @required Result error(Error value),
  }) {
    assert(idle != null);
    assert(productList != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result productList(ProductList value),
    Result loading(Loading value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ProductSearchState {
  const factory Error() = _$Error;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddToCartState {
  bool get addToCardLoading => throw _privateConstructorUsedError;
  bool get showAddButton => throw _privateConstructorUsedError;
  bool get cartDataLoading => throw _privateConstructorUsedError;
  num get noOfItems => throw _privateConstructorUsedError;
  ProductState get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddToCartStateCopyWith<AddToCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartStateCopyWith<$Res> {
  factory $AddToCartStateCopyWith(
          AddToCartState value, $Res Function(AddToCartState) then) =
      _$AddToCartStateCopyWithImpl<$Res, AddToCartState>;
  @useResult
  $Res call(
      {bool addToCardLoading,
      bool showAddButton,
      bool cartDataLoading,
      num noOfItems,
      ProductState product});

  $ProductStateCopyWith<$Res> get product;
}

/// @nodoc
class _$AddToCartStateCopyWithImpl<$Res, $Val extends AddToCartState>
    implements $AddToCartStateCopyWith<$Res> {
  _$AddToCartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addToCardLoading = null,
    Object? showAddButton = null,
    Object? cartDataLoading = null,
    Object? noOfItems = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      addToCardLoading: null == addToCardLoading
          ? _value.addToCardLoading
          : addToCardLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showAddButton: null == showAddButton
          ? _value.showAddButton
          : showAddButton // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDataLoading: null == cartDataLoading
          ? _value.cartDataLoading
          : cartDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      noOfItems: null == noOfItems
          ? _value.noOfItems
          : noOfItems // ignore: cast_nullable_to_non_nullable
              as num,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductStateCopyWith<$Res> get product {
    return $ProductStateCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddToCartStateCopyWith<$Res>
    implements $AddToCartStateCopyWith<$Res> {
  factory _$$_AddToCartStateCopyWith(
          _$_AddToCartState value, $Res Function(_$_AddToCartState) then) =
      __$$_AddToCartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool addToCardLoading,
      bool showAddButton,
      bool cartDataLoading,
      num noOfItems,
      ProductState product});

  @override
  $ProductStateCopyWith<$Res> get product;
}

/// @nodoc
class __$$_AddToCartStateCopyWithImpl<$Res>
    extends _$AddToCartStateCopyWithImpl<$Res, _$_AddToCartState>
    implements _$$_AddToCartStateCopyWith<$Res> {
  __$$_AddToCartStateCopyWithImpl(
      _$_AddToCartState _value, $Res Function(_$_AddToCartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addToCardLoading = null,
    Object? showAddButton = null,
    Object? cartDataLoading = null,
    Object? noOfItems = null,
    Object? product = null,
  }) {
    return _then(_$_AddToCartState(
      addToCardLoading: null == addToCardLoading
          ? _value.addToCardLoading
          : addToCardLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showAddButton: null == showAddButton
          ? _value.showAddButton
          : showAddButton // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDataLoading: null == cartDataLoading
          ? _value.cartDataLoading
          : cartDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      noOfItems: null == noOfItems
          ? _value.noOfItems
          : noOfItems // ignore: cast_nullable_to_non_nullable
              as num,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductState,
    ));
  }
}

/// @nodoc

class _$_AddToCartState implements _AddToCartState {
  const _$_AddToCartState(
      {this.addToCardLoading = false,
      this.showAddButton = true,
      this.cartDataLoading = false,
      this.noOfItems = 0,
      this.product = const ProductState.loading()});

  @override
  @JsonKey()
  final bool addToCardLoading;
  @override
  @JsonKey()
  final bool showAddButton;
  @override
  @JsonKey()
  final bool cartDataLoading;
  @override
  @JsonKey()
  final num noOfItems;
  @override
  @JsonKey()
  final ProductState product;

  @override
  String toString() {
    return 'AddToCartState(addToCardLoading: $addToCardLoading, showAddButton: $showAddButton, cartDataLoading: $cartDataLoading, noOfItems: $noOfItems, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCartState &&
            (identical(other.addToCardLoading, addToCardLoading) ||
                other.addToCardLoading == addToCardLoading) &&
            (identical(other.showAddButton, showAddButton) ||
                other.showAddButton == showAddButton) &&
            (identical(other.cartDataLoading, cartDataLoading) ||
                other.cartDataLoading == cartDataLoading) &&
            (identical(other.noOfItems, noOfItems) ||
                other.noOfItems == noOfItems) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addToCardLoading, showAddButton,
      cartDataLoading, noOfItems, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToCartStateCopyWith<_$_AddToCartState> get copyWith =>
      __$$_AddToCartStateCopyWithImpl<_$_AddToCartState>(this, _$identity);
}

abstract class _AddToCartState implements AddToCartState {
  const factory _AddToCartState(
      {final bool addToCardLoading,
      final bool showAddButton,
      final bool cartDataLoading,
      final num noOfItems,
      final ProductState product}) = _$_AddToCartState;

  @override
  bool get addToCardLoading;
  @override
  bool get showAddButton;
  @override
  bool get cartDataLoading;
  @override
  num get noOfItems;
  @override
  ProductState get product;
  @override
  @JsonKey(ignore: true)
  _$$_AddToCartStateCopyWith<_$_AddToCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Product product) data,
    required TResult Function(NetworkError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Product product)? data,
    TResult? Function(NetworkError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Product product)? data,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductData value) data,
    required TResult Function(ProductError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductData value)? data,
    TResult? Function(ProductError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductData value)? data,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductLoadingCopyWith<$Res> {
  factory _$$ProductLoadingCopyWith(
          _$ProductLoading value, $Res Function(_$ProductLoading) then) =
      __$$ProductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductLoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoading>
    implements _$$ProductLoadingCopyWith<$Res> {
  __$$ProductLoadingCopyWithImpl(
      _$ProductLoading _value, $Res Function(_$ProductLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductLoading implements ProductLoading {
  const _$ProductLoading();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Product product) data,
    required TResult Function(NetworkError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Product product)? data,
    TResult? Function(NetworkError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Product product)? data,
    TResult Function(NetworkError error)? error,
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
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductData value) data,
    required TResult Function(ProductError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductData value)? data,
    TResult? Function(ProductError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductData value)? data,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductLoading implements ProductState {
  const factory ProductLoading() = _$ProductLoading;
}

/// @nodoc
abstract class _$$ProductDataCopyWith<$Res> {
  factory _$$ProductDataCopyWith(
          _$ProductData value, $Res Function(_$ProductData) then) =
      __$$ProductDataCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$ProductDataCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductData>
    implements _$$ProductDataCopyWith<$Res> {
  __$$ProductDataCopyWithImpl(
      _$ProductData _value, $Res Function(_$ProductData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductData(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$ProductData implements ProductData {
  const _$ProductData(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductState.data(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductData &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataCopyWith<_$ProductData> get copyWith =>
      __$$ProductDataCopyWithImpl<_$ProductData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Product product) data,
    required TResult Function(NetworkError error) error,
  }) {
    return data(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Product product)? data,
    TResult? Function(NetworkError error)? error,
  }) {
    return data?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Product product)? data,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductData value) data,
    required TResult Function(ProductError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductData value)? data,
    TResult? Function(ProductError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductData value)? data,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ProductData implements ProductState {
  const factory ProductData(final Product product) = _$ProductData;

  Product get product;
  @JsonKey(ignore: true)
  _$$ProductDataCopyWith<_$ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductErrorCopyWith<$Res> {
  factory _$$ProductErrorCopyWith(
          _$ProductError value, $Res Function(_$ProductError) then) =
      __$$ProductErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkError error});
}

/// @nodoc
class __$$ProductErrorCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductError>
    implements _$$ProductErrorCopyWith<$Res> {
  __$$ProductErrorCopyWithImpl(
      _$ProductError _value, $Res Function(_$ProductError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProductError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError,
    ));
  }
}

/// @nodoc

class _$ProductError implements ProductError {
  const _$ProductError(this.error);

  @override
  final NetworkError error;

  @override
  String toString() {
    return 'ProductState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductErrorCopyWith<_$ProductError> get copyWith =>
      __$$ProductErrorCopyWithImpl<_$ProductError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Product product) data,
    required TResult Function(NetworkError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Product product)? data,
    TResult? Function(NetworkError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Product product)? data,
    TResult Function(NetworkError error)? error,
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
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductData value) data,
    required TResult Function(ProductError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductData value)? data,
    TResult? Function(ProductError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductData value)? data,
    TResult Function(ProductError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductError implements ProductState {
  const factory ProductError(final NetworkError error) = _$ProductError;

  NetworkError get error;
  @JsonKey(ignore: true)
  _$$ProductErrorCopyWith<_$ProductError> get copyWith =>
      throw _privateConstructorUsedError;
}

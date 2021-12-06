// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AllProductStateTearOff {
  const _$AllProductStateTearOff();

  ProductLoading productLoading() {
    return const ProductLoading();
  }
}

/// @nodoc
const $AllProductState = _$AllProductStateTearOff();

/// @nodoc
mixin _$AllProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() productLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? productLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? productLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductLoading value) productLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductLoading value)? productLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductLoading value)? productLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductStateCopyWith<$Res> {
  factory $AllProductStateCopyWith(
          AllProductState value, $Res Function(AllProductState) then) =
      _$AllProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllProductStateCopyWithImpl<$Res>
    implements $AllProductStateCopyWith<$Res> {
  _$AllProductStateCopyWithImpl(this._value, this._then);

  final AllProductState _value;
  // ignore: unused_field
  final $Res Function(AllProductState) _then;
}

/// @nodoc
abstract class $ProductLoadingCopyWith<$Res> {
  factory $ProductLoadingCopyWith(
          ProductLoading value, $Res Function(ProductLoading) then) =
      _$ProductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductLoadingCopyWithImpl<$Res>
    extends _$AllProductStateCopyWithImpl<$Res>
    implements $ProductLoadingCopyWith<$Res> {
  _$ProductLoadingCopyWithImpl(
      ProductLoading _value, $Res Function(ProductLoading) _then)
      : super(_value, (v) => _then(v as ProductLoading));

  @override
  ProductLoading get _value => super._value as ProductLoading;
}

/// @nodoc

class _$ProductLoading implements ProductLoading {
  const _$ProductLoading();

  @override
  String toString() {
    return 'AllProductState.productLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() productLoading,
  }) {
    return productLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? productLoading,
  }) {
    return productLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? productLoading,
    required TResult orElse(),
  }) {
    if (productLoading != null) {
      return productLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductLoading value) productLoading,
  }) {
    return productLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductLoading value)? productLoading,
  }) {
    return productLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductLoading value)? productLoading,
    required TResult orElse(),
  }) {
    if (productLoading != null) {
      return productLoading(this);
    }
    return orElse();
  }
}

abstract class ProductLoading implements AllProductState {
  const factory ProductLoading() = _$ProductLoading;
}

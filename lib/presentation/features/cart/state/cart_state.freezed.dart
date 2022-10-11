// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  int get cartValue => throw _privateConstructorUsedError;

  bool get cartDataLoading => throw _privateConstructorUsedError;

  bool get cartDeleteLoading => throw _privateConstructorUsedError;

  bool get orderInProgress => throw _privateConstructorUsedError;

  String? get cartError => throw _privateConstructorUsedError;

  String? get deleteCartError => throw _privateConstructorUsedError;

  List<Cart> get cartList => throw _privateConstructorUsedError;

  Address? get selectedAddress => throw _privateConstructorUsedError;

  CartDataLoading get cartItemDataLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) = _$CartStateCopyWithImpl<$Res>;

  $Res call(
      {int cartValue,
      bool cartDataLoading,
      bool cartDeleteLoading,
      bool orderInProgress,
      String? cartError,
      String? deleteCartError,
      List<Cart> cartList,
      Address? selectedAddress,
      CartDataLoading cartItemDataLoading});

  $CartDataLoadingCopyWith<$Res> get cartItemDataLoading;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;

  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? cartValue = freezed,
    Object? cartDataLoading = freezed,
    Object? cartDeleteLoading = freezed,
    Object? orderInProgress = freezed,
    Object? cartError = freezed,
    Object? deleteCartError = freezed,
    Object? cartList = freezed,
    Object? selectedAddress = freezed,
    Object? cartItemDataLoading = freezed,
  }) {
    return _then(_value.copyWith(
      cartValue: cartValue == freezed
          ? _value.cartValue
          : cartValue // ignore: cast_nullable_to_non_nullable
              as int,
      cartDataLoading: cartDataLoading == freezed
          ? _value.cartDataLoading
          : cartDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDeleteLoading: cartDeleteLoading == freezed
          ? _value.cartDeleteLoading
          : cartDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderInProgress: orderInProgress == freezed
          ? _value.orderInProgress
          : orderInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      cartError: cartError == freezed
          ? _value.cartError
          : cartError // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteCartError: deleteCartError == freezed
          ? _value.deleteCartError
          : deleteCartError // ignore: cast_nullable_to_non_nullable
              as String?,
      cartList: cartList == freezed
          ? _value.cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      selectedAddress: selectedAddress == freezed
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      cartItemDataLoading: cartItemDataLoading == freezed
          ? _value.cartItemDataLoading
          : cartItemDataLoading // ignore: cast_nullable_to_non_nullable
              as CartDataLoading,
    ));
  }

  @override
  $CartDataLoadingCopyWith<$Res> get cartItemDataLoading {
    return $CartDataLoadingCopyWith<$Res>(_value.cartItemDataLoading, (value) {
      return _then(_value.copyWith(cartItemDataLoading: value));
    });
  }
}

/// @nodoc
abstract class _$$_CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_CartStateCopyWith(_$_CartState value, $Res Function(_$_CartState) then) =
      __$$_CartStateCopyWithImpl<$Res>;

  @override
  $Res call(
      {int cartValue,
      bool cartDataLoading,
      bool cartDeleteLoading,
      bool orderInProgress,
      String? cartError,
      String? deleteCartError,
      List<Cart> cartList,
      Address? selectedAddress,
      CartDataLoading cartItemDataLoading});

  @override
  $CartDataLoadingCopyWith<$Res> get cartItemDataLoading;
}

/// @nodoc
class __$$_CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res> implements _$$_CartStateCopyWith<$Res> {
  __$$_CartStateCopyWithImpl(_$_CartState _value, $Res Function(_$_CartState) _then)
      : super(_value, (v) => _then(v as _$_CartState));

  @override
  _$_CartState get _value => super._value as _$_CartState;

  @override
  $Res call({
    Object? cartValue = freezed,
    Object? cartDataLoading = freezed,
    Object? cartDeleteLoading = freezed,
    Object? orderInProgress = freezed,
    Object? cartError = freezed,
    Object? deleteCartError = freezed,
    Object? cartList = freezed,
    Object? selectedAddress = freezed,
    Object? cartItemDataLoading = freezed,
  }) {
    return _then(_$_CartState(
      cartValue: cartValue == freezed
          ? _value.cartValue
          : cartValue // ignore: cast_nullable_to_non_nullable
              as int,
      cartDataLoading: cartDataLoading == freezed
          ? _value.cartDataLoading
          : cartDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDeleteLoading: cartDeleteLoading == freezed
          ? _value.cartDeleteLoading
          : cartDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderInProgress: orderInProgress == freezed
          ? _value.orderInProgress
          : orderInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      cartError: cartError == freezed
          ? _value.cartError
          : cartError // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteCartError: deleteCartError == freezed
          ? _value.deleteCartError
          : deleteCartError // ignore: cast_nullable_to_non_nullable
              as String?,
      cartList: cartList == freezed
          ? _value._cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      selectedAddress: selectedAddress == freezed
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      cartItemDataLoading: cartItemDataLoading == freezed
          ? _value.cartItemDataLoading
          : cartItemDataLoading // ignore: cast_nullable_to_non_nullable
              as CartDataLoading,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState(
      {this.cartValue = 0,
      this.cartDataLoading = false,
      this.cartDeleteLoading = false,
      this.orderInProgress = false,
      this.cartError,
      this.deleteCartError,
      final List<Cart> cartList = const [],
      this.selectedAddress,
      this.cartItemDataLoading = const CartDataLoading()})
      : _cartList = cartList;

  @override
  @JsonKey()
  final int cartValue;
  @override
  @JsonKey()
  final bool cartDataLoading;
  @override
  @JsonKey()
  final bool cartDeleteLoading;
  @override
  @JsonKey()
  final bool orderInProgress;
  @override
  final String? cartError;
  @override
  final String? deleteCartError;
  final List<Cart> _cartList;

  @override
  @JsonKey()
  List<Cart> get cartList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartList);
  }

  @override
  final Address? selectedAddress;
  @override
  @JsonKey()
  final CartDataLoading cartItemDataLoading;

  @override
  String toString() {
    return 'CartState(cartValue: $cartValue, cartDataLoading: $cartDataLoading, cartDeleteLoading: $cartDeleteLoading, orderInProgress: $orderInProgress, cartError: $cartError, deleteCartError: $deleteCartError, cartList: $cartList, selectedAddress: $selectedAddress, cartItemDataLoading: $cartItemDataLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartState &&
            const DeepCollectionEquality().equals(other.cartValue, cartValue) &&
            const DeepCollectionEquality().equals(other.cartDataLoading, cartDataLoading) &&
            const DeepCollectionEquality().equals(other.cartDeleteLoading, cartDeleteLoading) &&
            const DeepCollectionEquality().equals(other.orderInProgress, orderInProgress) &&
            const DeepCollectionEquality().equals(other.cartError, cartError) &&
            const DeepCollectionEquality().equals(other.deleteCartError, deleteCartError) &&
            const DeepCollectionEquality().equals(other._cartList, _cartList) &&
            const DeepCollectionEquality().equals(other.selectedAddress, selectedAddress) &&
            const DeepCollectionEquality().equals(other.cartItemDataLoading, cartItemDataLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cartValue),
      const DeepCollectionEquality().hash(cartDataLoading),
      const DeepCollectionEquality().hash(cartDeleteLoading),
      const DeepCollectionEquality().hash(orderInProgress),
      const DeepCollectionEquality().hash(cartError),
      const DeepCollectionEquality().hash(deleteCartError),
      const DeepCollectionEquality().hash(_cartList),
      const DeepCollectionEquality().hash(selectedAddress),
      const DeepCollectionEquality().hash(cartItemDataLoading));

  @JsonKey(ignore: true)
  @override
  _$$_CartStateCopyWith<_$_CartState> get copyWith => __$$_CartStateCopyWithImpl<_$_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {final int cartValue,
      final bool cartDataLoading,
      final bool cartDeleteLoading,
      final bool orderInProgress,
      final String? cartError,
      final String? deleteCartError,
      final List<Cart> cartList,
      final Address? selectedAddress,
      final CartDataLoading cartItemDataLoading}) = _$_CartState;

  @override
  int get cartValue;

  @override
  bool get cartDataLoading;

  @override
  bool get cartDeleteLoading;

  @override
  bool get orderInProgress;

  @override
  String? get cartError;

  @override
  String? get deleteCartError;

  @override
  List<Cart> get cartList;

  @override
  Address? get selectedAddress;

  @override
  CartDataLoading get cartItemDataLoading;

  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartDataLoading {
  int get index => throw _privateConstructorUsedError;

  bool get isLoading => throw _privateConstructorUsedError;

  bool get deleteLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartDataLoadingCopyWith<CartDataLoading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDataLoadingCopyWith<$Res> {
  factory $CartDataLoadingCopyWith(CartDataLoading value, $Res Function(CartDataLoading) then) =
      _$CartDataLoadingCopyWithImpl<$Res>;

  $Res call({int index, bool isLoading, bool deleteLoading});
}

/// @nodoc
class _$CartDataLoadingCopyWithImpl<$Res> implements $CartDataLoadingCopyWith<$Res> {
  _$CartDataLoadingCopyWithImpl(this._value, this._then);

  final CartDataLoading _value;

  // ignore: unused_field
  final $Res Function(CartDataLoading) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? isLoading = freezed,
    Object? deleteLoading = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteLoading: deleteLoading == freezed
          ? _value.deleteLoading
          : deleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CartDataLoadingCopyWith<$Res> implements $CartDataLoadingCopyWith<$Res> {
  factory _$$_CartDataLoadingCopyWith(_$_CartDataLoading value, $Res Function(_$_CartDataLoading) then) =
      __$$_CartDataLoadingCopyWithImpl<$Res>;

  @override
  $Res call({int index, bool isLoading, bool deleteLoading});
}

/// @nodoc
class __$$_CartDataLoadingCopyWithImpl<$Res> extends _$CartDataLoadingCopyWithImpl<$Res>
    implements _$$_CartDataLoadingCopyWith<$Res> {
  __$$_CartDataLoadingCopyWithImpl(_$_CartDataLoading _value, $Res Function(_$_CartDataLoading) _then)
      : super(_value, (v) => _then(v as _$_CartDataLoading));

  @override
  _$_CartDataLoading get _value => super._value as _$_CartDataLoading;

  @override
  $Res call({
    Object? index = freezed,
    Object? isLoading = freezed,
    Object? deleteLoading = freezed,
  }) {
    return _then(_$_CartDataLoading(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteLoading: deleteLoading == freezed
          ? _value.deleteLoading
          : deleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CartDataLoading implements _CartDataLoading {
  const _$_CartDataLoading({this.index = 0, this.isLoading = false, this.deleteLoading = false});

  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool deleteLoading;

  @override
  String toString() {
    return 'CartDataLoading(index: $index, isLoading: $isLoading, deleteLoading: $deleteLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartDataLoading &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.deleteLoading, deleteLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(isLoading), const DeepCollectionEquality().hash(deleteLoading));

  @JsonKey(ignore: true)
  @override
  _$$_CartDataLoadingCopyWith<_$_CartDataLoading> get copyWith =>
      __$$_CartDataLoadingCopyWithImpl<_$_CartDataLoading>(this, _$identity);
}

abstract class _CartDataLoading implements CartDataLoading {
  const factory _CartDataLoading({final int index, final bool isLoading, final bool deleteLoading}) =
      _$_CartDataLoading;

  @override
  int get index;

  @override
  bool get isLoading;

  @override
  bool get deleteLoading;

  @override
  @JsonKey(ignore: true)
  _$$_CartDataLoadingCopyWith<_$_CartDataLoading> get copyWith => throw _privateConstructorUsedError;
}

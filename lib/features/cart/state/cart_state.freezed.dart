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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call(
      {int cartValue = 0,
      bool cartDataLoading = false,
      bool cartDeleteLoading = false,
      bool orderInProgress = false,
      String? cartError,
      String? deleteCartError,
      List<CartModel> cartList = const [],
      Address? selectedAddress,
      CartDataLoading cartItemDataLoading = const CartDataLoading()}) {
    return _CartState(
      cartValue: cartValue,
      cartDataLoading: cartDataLoading,
      cartDeleteLoading: cartDeleteLoading,
      orderInProgress: orderInProgress,
      cartError: cartError,
      deleteCartError: deleteCartError,
      cartList: cartList,
      selectedAddress: selectedAddress,
      cartItemDataLoading: cartItemDataLoading,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  int get cartValue => throw _privateConstructorUsedError;
  bool get cartDataLoading => throw _privateConstructorUsedError;
  bool get cartDeleteLoading => throw _privateConstructorUsedError;
  bool get orderInProgress => throw _privateConstructorUsedError;
  String? get cartError => throw _privateConstructorUsedError;
  String? get deleteCartError => throw _privateConstructorUsedError;
  List<CartModel> get cartList => throw _privateConstructorUsedError;
  Address? get selectedAddress => throw _privateConstructorUsedError;
  CartDataLoading get cartItemDataLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call(
      {int cartValue,
      bool cartDataLoading,
      bool cartDeleteLoading,
      bool orderInProgress,
      String? cartError,
      String? deleteCartError,
      List<CartModel> cartList,
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
              as List<CartModel>,
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
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int cartValue,
      bool cartDataLoading,
      bool cartDeleteLoading,
      bool orderInProgress,
      String? cartError,
      String? deleteCartError,
      List<CartModel> cartList,
      Address? selectedAddress,
      CartDataLoading cartItemDataLoading});

  @override
  $CartDataLoadingCopyWith<$Res> get cartItemDataLoading;
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

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
    return _then(_CartState(
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
              as List<CartModel>,
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
      this.cartList = const [],
      this.selectedAddress,
      this.cartItemDataLoading = const CartDataLoading()});

  @JsonKey()
  @override
  final int cartValue;
  @JsonKey()
  @override
  final bool cartDataLoading;
  @JsonKey()
  @override
  final bool cartDeleteLoading;
  @JsonKey()
  @override
  final bool orderInProgress;
  @override
  final String? cartError;
  @override
  final String? deleteCartError;
  @JsonKey()
  @override
  final List<CartModel> cartList;
  @override
  final Address? selectedAddress;
  @JsonKey()
  @override
  final CartDataLoading cartItemDataLoading;

  @override
  String toString() {
    return 'CartState(cartValue: $cartValue, cartDataLoading: $cartDataLoading, cartDeleteLoading: $cartDeleteLoading, orderInProgress: $orderInProgress, cartError: $cartError, deleteCartError: $deleteCartError, cartList: $cartList, selectedAddress: $selectedAddress, cartItemDataLoading: $cartItemDataLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartState &&
            const DeepCollectionEquality().equals(other.cartValue, cartValue) &&
            const DeepCollectionEquality()
                .equals(other.cartDataLoading, cartDataLoading) &&
            const DeepCollectionEquality()
                .equals(other.cartDeleteLoading, cartDeleteLoading) &&
            const DeepCollectionEquality()
                .equals(other.orderInProgress, orderInProgress) &&
            const DeepCollectionEquality().equals(other.cartError, cartError) &&
            const DeepCollectionEquality()
                .equals(other.deleteCartError, deleteCartError) &&
            const DeepCollectionEquality().equals(other.cartList, cartList) &&
            const DeepCollectionEquality()
                .equals(other.selectedAddress, selectedAddress) &&
            const DeepCollectionEquality()
                .equals(other.cartItemDataLoading, cartItemDataLoading));
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
      const DeepCollectionEquality().hash(cartList),
      const DeepCollectionEquality().hash(selectedAddress),
      const DeepCollectionEquality().hash(cartItemDataLoading));

  @JsonKey(ignore: true)
  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {int cartValue,
      bool cartDataLoading,
      bool cartDeleteLoading,
      bool orderInProgress,
      String? cartError,
      String? deleteCartError,
      List<CartModel> cartList,
      Address? selectedAddress,
      CartDataLoading cartItemDataLoading}) = _$_CartState;

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
  List<CartModel> get cartList;
  @override
  Address? get selectedAddress;
  @override
  CartDataLoading get cartItemDataLoading;
  @override
  @JsonKey(ignore: true)
  _$CartStateCopyWith<_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CartDataLoadingTearOff {
  const _$CartDataLoadingTearOff();

  _CartDataLoading call(
      {int index = 0, bool isLoading = false, bool deleteLoading = false}) {
    return _CartDataLoading(
      index: index,
      isLoading: isLoading,
      deleteLoading: deleteLoading,
    );
  }
}

/// @nodoc
const $CartDataLoading = _$CartDataLoadingTearOff();

/// @nodoc
mixin _$CartDataLoading {
  int get index => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get deleteLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartDataLoadingCopyWith<CartDataLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDataLoadingCopyWith<$Res> {
  factory $CartDataLoadingCopyWith(
          CartDataLoading value, $Res Function(CartDataLoading) then) =
      _$CartDataLoadingCopyWithImpl<$Res>;
  $Res call({int index, bool isLoading, bool deleteLoading});
}

/// @nodoc
class _$CartDataLoadingCopyWithImpl<$Res>
    implements $CartDataLoadingCopyWith<$Res> {
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
abstract class _$CartDataLoadingCopyWith<$Res>
    implements $CartDataLoadingCopyWith<$Res> {
  factory _$CartDataLoadingCopyWith(
          _CartDataLoading value, $Res Function(_CartDataLoading) then) =
      __$CartDataLoadingCopyWithImpl<$Res>;
  @override
  $Res call({int index, bool isLoading, bool deleteLoading});
}

/// @nodoc
class __$CartDataLoadingCopyWithImpl<$Res>
    extends _$CartDataLoadingCopyWithImpl<$Res>
    implements _$CartDataLoadingCopyWith<$Res> {
  __$CartDataLoadingCopyWithImpl(
      _CartDataLoading _value, $Res Function(_CartDataLoading) _then)
      : super(_value, (v) => _then(v as _CartDataLoading));

  @override
  _CartDataLoading get _value => super._value as _CartDataLoading;

  @override
  $Res call({
    Object? index = freezed,
    Object? isLoading = freezed,
    Object? deleteLoading = freezed,
  }) {
    return _then(_CartDataLoading(
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
  const _$_CartDataLoading(
      {this.index = 0, this.isLoading = false, this.deleteLoading = false});

  @JsonKey()
  @override
  final int index;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool deleteLoading;

  @override
  String toString() {
    return 'CartDataLoading(index: $index, isLoading: $isLoading, deleteLoading: $deleteLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartDataLoading &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.deleteLoading, deleteLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(deleteLoading));

  @JsonKey(ignore: true)
  @override
  _$CartDataLoadingCopyWith<_CartDataLoading> get copyWith =>
      __$CartDataLoadingCopyWithImpl<_CartDataLoading>(this, _$identity);
}

abstract class _CartDataLoading implements CartDataLoading {
  const factory _CartDataLoading(
      {int index, bool isLoading, bool deleteLoading}) = _$_CartDataLoading;

  @override
  int get index;
  @override
  bool get isLoading;
  @override
  bool get deleteLoading;
  @override
  @JsonKey(ignore: true)
  _$CartDataLoadingCopyWith<_CartDataLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

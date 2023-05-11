// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
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
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartValue = null,
    Object? cartDataLoading = null,
    Object? cartDeleteLoading = null,
    Object? orderInProgress = null,
    Object? cartError = freezed,
    Object? deleteCartError = freezed,
    Object? cartList = null,
    Object? selectedAddress = freezed,
    Object? cartItemDataLoading = null,
  }) {
    return _then(_value.copyWith(
      cartValue: null == cartValue
          ? _value.cartValue
          : cartValue // ignore: cast_nullable_to_non_nullable
              as int,
      cartDataLoading: null == cartDataLoading
          ? _value.cartDataLoading
          : cartDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDeleteLoading: null == cartDeleteLoading
          ? _value.cartDeleteLoading
          : cartDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderInProgress: null == orderInProgress
          ? _value.orderInProgress
          : orderInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      cartError: freezed == cartError
          ? _value.cartError
          : cartError // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteCartError: freezed == deleteCartError
          ? _value.deleteCartError
          : deleteCartError // ignore: cast_nullable_to_non_nullable
              as String?,
      cartList: null == cartList
          ? _value.cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      cartItemDataLoading: null == cartItemDataLoading
          ? _value.cartItemDataLoading
          : cartItemDataLoading // ignore: cast_nullable_to_non_nullable
              as CartDataLoading,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartDataLoadingCopyWith<$Res> get cartItemDataLoading {
    return $CartDataLoadingCopyWith<$Res>(_value.cartItemDataLoading, (value) {
      return _then(_value.copyWith(cartItemDataLoading: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_CartStateCopyWith(
          _$_CartState value, $Res Function(_$_CartState) then) =
      __$$_CartStateCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_CartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartState>
    implements _$$_CartStateCopyWith<$Res> {
  __$$_CartStateCopyWithImpl(
      _$_CartState _value, $Res Function(_$_CartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartValue = null,
    Object? cartDataLoading = null,
    Object? cartDeleteLoading = null,
    Object? orderInProgress = null,
    Object? cartError = freezed,
    Object? deleteCartError = freezed,
    Object? cartList = null,
    Object? selectedAddress = freezed,
    Object? cartItemDataLoading = null,
  }) {
    return _then(_$_CartState(
      cartValue: null == cartValue
          ? _value.cartValue
          : cartValue // ignore: cast_nullable_to_non_nullable
              as int,
      cartDataLoading: null == cartDataLoading
          ? _value.cartDataLoading
          : cartDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDeleteLoading: null == cartDeleteLoading
          ? _value.cartDeleteLoading
          : cartDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderInProgress: null == orderInProgress
          ? _value.orderInProgress
          : orderInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      cartError: freezed == cartError
          ? _value.cartError
          : cartError // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteCartError: freezed == deleteCartError
          ? _value.deleteCartError
          : deleteCartError // ignore: cast_nullable_to_non_nullable
              as String?,
      cartList: null == cartList
          ? _value._cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      cartItemDataLoading: null == cartItemDataLoading
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
      final List<Cart> cartList = const <Cart>[],
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
    if (_cartList is EqualUnmodifiableListView) return _cartList;
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
            (identical(other.cartValue, cartValue) ||
                other.cartValue == cartValue) &&
            (identical(other.cartDataLoading, cartDataLoading) ||
                other.cartDataLoading == cartDataLoading) &&
            (identical(other.cartDeleteLoading, cartDeleteLoading) ||
                other.cartDeleteLoading == cartDeleteLoading) &&
            (identical(other.orderInProgress, orderInProgress) ||
                other.orderInProgress == orderInProgress) &&
            (identical(other.cartError, cartError) ||
                other.cartError == cartError) &&
            (identical(other.deleteCartError, deleteCartError) ||
                other.deleteCartError == deleteCartError) &&
            const DeepCollectionEquality().equals(other._cartList, _cartList) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            (identical(other.cartItemDataLoading, cartItemDataLoading) ||
                other.cartItemDataLoading == cartItemDataLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cartValue,
      cartDataLoading,
      cartDeleteLoading,
      orderInProgress,
      cartError,
      deleteCartError,
      const DeepCollectionEquality().hash(_cartList),
      selectedAddress,
      cartItemDataLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      __$$_CartStateCopyWithImpl<_$_CartState>(this, _$identity);
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
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      _$CartDataLoadingCopyWithImpl<$Res, CartDataLoading>;
  @useResult
  $Res call({int index, bool isLoading, bool deleteLoading});
}

/// @nodoc
class _$CartDataLoadingCopyWithImpl<$Res, $Val extends CartDataLoading>
    implements $CartDataLoadingCopyWith<$Res> {
  _$CartDataLoadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? isLoading = null,
    Object? deleteLoading = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteLoading: null == deleteLoading
          ? _value.deleteLoading
          : deleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartDataLoadingCopyWith<$Res>
    implements $CartDataLoadingCopyWith<$Res> {
  factory _$$_CartDataLoadingCopyWith(
          _$_CartDataLoading value, $Res Function(_$_CartDataLoading) then) =
      __$$_CartDataLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, bool isLoading, bool deleteLoading});
}

/// @nodoc
class __$$_CartDataLoadingCopyWithImpl<$Res>
    extends _$CartDataLoadingCopyWithImpl<$Res, _$_CartDataLoading>
    implements _$$_CartDataLoadingCopyWith<$Res> {
  __$$_CartDataLoadingCopyWithImpl(
      _$_CartDataLoading _value, $Res Function(_$_CartDataLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? isLoading = null,
    Object? deleteLoading = null,
  }) {
    return _then(_$_CartDataLoading(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteLoading: null == deleteLoading
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
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.deleteLoading, deleteLoading) ||
                other.deleteLoading == deleteLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, isLoading, deleteLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartDataLoadingCopyWith<_$_CartDataLoading> get copyWith =>
      __$$_CartDataLoadingCopyWithImpl<_$_CartDataLoading>(this, _$identity);
}

abstract class _CartDataLoading implements CartDataLoading {
  const factory _CartDataLoading(
      {final int index,
      final bool isLoading,
      final bool deleteLoading}) = _$_CartDataLoading;

  @override
  int get index;
  @override
  bool get isLoading;
  @override
  bool get deleteLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CartDataLoadingCopyWith<_$_CartDataLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

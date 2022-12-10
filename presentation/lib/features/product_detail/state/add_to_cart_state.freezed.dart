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
      num noOfItems});
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
    ) as $Val);
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
      num noOfItems});
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
    ));
  }
}

/// @nodoc

class _$_AddToCartState implements _AddToCartState {
  const _$_AddToCartState(
      {this.addToCardLoading = false,
      this.showAddButton = false,
      this.cartDataLoading = false,
      this.noOfItems = 0});

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
  String toString() {
    return 'AddToCartState(addToCardLoading: $addToCardLoading, showAddButton: $showAddButton, cartDataLoading: $cartDataLoading, noOfItems: $noOfItems)';
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
                other.noOfItems == noOfItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, addToCardLoading, showAddButton, cartDataLoading, noOfItems);

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
      final num noOfItems}) = _$_AddToCartState;

  @override
  bool get addToCardLoading;

  @override
  bool get showAddButton;

  @override
  bool get cartDataLoading;

  @override
  num get noOfItems;

  @override
  @JsonKey(ignore: true)
  _$$_AddToCartStateCopyWith<_$_AddToCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$AddToCartStateCopyWithImpl<$Res>;
  $Res call(
      {bool addToCardLoading,
      bool showAddButton,
      bool cartDataLoading,
      num noOfItems});
}

/// @nodoc
class _$AddToCartStateCopyWithImpl<$Res>
    implements $AddToCartStateCopyWith<$Res> {
  _$AddToCartStateCopyWithImpl(this._value, this._then);

  final AddToCartState _value;
  // ignore: unused_field
  final $Res Function(AddToCartState) _then;

  @override
  $Res call({
    Object? addToCardLoading = freezed,
    Object? showAddButton = freezed,
    Object? cartDataLoading = freezed,
    Object? noOfItems = freezed,
  }) {
    return _then(_value.copyWith(
      addToCardLoading: addToCardLoading == freezed
          ? _value.addToCardLoading
          : addToCardLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showAddButton: showAddButton == freezed
          ? _value.showAddButton
          : showAddButton // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDataLoading: cartDataLoading == freezed
          ? _value.cartDataLoading
          : cartDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      noOfItems: noOfItems == freezed
          ? _value.noOfItems
          : noOfItems // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_AddToCartStateCopyWith<$Res>
    implements $AddToCartStateCopyWith<$Res> {
  factory _$$_AddToCartStateCopyWith(
          _$_AddToCartState value, $Res Function(_$_AddToCartState) then) =
      __$$_AddToCartStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool addToCardLoading,
      bool showAddButton,
      bool cartDataLoading,
      num noOfItems});
}

/// @nodoc
class __$$_AddToCartStateCopyWithImpl<$Res>
    extends _$AddToCartStateCopyWithImpl<$Res>
    implements _$$_AddToCartStateCopyWith<$Res> {
  __$$_AddToCartStateCopyWithImpl(
      _$_AddToCartState _value, $Res Function(_$_AddToCartState) _then)
      : super(_value, (v) => _then(v as _$_AddToCartState));

  @override
  _$_AddToCartState get _value => super._value as _$_AddToCartState;

  @override
  $Res call({
    Object? addToCardLoading = freezed,
    Object? showAddButton = freezed,
    Object? cartDataLoading = freezed,
    Object? noOfItems = freezed,
  }) {
    return _then(_$_AddToCartState(
      addToCardLoading: addToCardLoading == freezed
          ? _value.addToCardLoading
          : addToCardLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showAddButton: showAddButton == freezed
          ? _value.showAddButton
          : showAddButton // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDataLoading: cartDataLoading == freezed
          ? _value.cartDataLoading
          : cartDataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      noOfItems: noOfItems == freezed
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
            const DeepCollectionEquality()
                .equals(other.addToCardLoading, addToCardLoading) &&
            const DeepCollectionEquality()
                .equals(other.showAddButton, showAddButton) &&
            const DeepCollectionEquality()
                .equals(other.cartDataLoading, cartDataLoading) &&
            const DeepCollectionEquality().equals(other.noOfItems, noOfItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addToCardLoading),
      const DeepCollectionEquality().hash(showAddButton),
      const DeepCollectionEquality().hash(cartDataLoading),
      const DeepCollectionEquality().hash(noOfItems));

  @JsonKey(ignore: true)
  @override
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

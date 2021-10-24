import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_products_state.freezed.dart';

@freezed
abstract class AllProductState with _$AllProductState {
  const factory AllProductState.productLoading() = ProductLoading;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/product_model.dart';

part 'product_search_state.freezed.dart';

@freezed
abstract class ProductSearchState with _$ProductSearchState {
  const factory ProductSearchState({
    @Default([]) List<ProductModel> productList,
    @Default(false) bool loading,
    String? otp,
    String? error,
  }) = _ProductSearchState;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/product_model.dart';

part 'product_search_state.freezed.dart';

@freezed
 class ProductSearchState with _$ProductSearchState {
  const factory ProductSearchState({
    @Default([]) List<ProductModel> productList,
    @Default(false) bool loading,
    String? otp,
    String? error,
  }) = _ProductSearchState;
}

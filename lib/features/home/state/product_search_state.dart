import 'package:fluttercommerce/features/common/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

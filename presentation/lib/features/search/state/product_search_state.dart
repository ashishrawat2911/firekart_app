import 'package:domain/models/product_model.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'product_search_state.freezed.dart';

@freezed
class ProductSearchState with _$ProductSearchState {
  const factory ProductSearchState({
    @Default(<Product>[]) List<Product> productList,
    @Default(false) bool loading,
    String? otp,
    String? error,
  }) = _ProductSearchState;
}

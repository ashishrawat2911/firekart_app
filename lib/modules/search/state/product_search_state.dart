import 'package:fluttercommerce/modules/common/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_search_state.freezed.dart';

@freezed
abstract class ProductSearchState with _$ProductSearchState {
  const factory ProductSearchState.idle() = Idle;

  const factory ProductSearchState.productList(List<ProductModel> productList) =
      ProductList;

  const factory ProductSearchState.loading() = Loading;

  const factory ProductSearchState.error() = Error;
}

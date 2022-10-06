import 'package:injectable/injectable.dart';

import '../../../../core/state_manager/state_manager.dart';
import '../../../../domain/usecases/search_products_use_case.dart';
import '../state/product_search_state.dart';

@injectable
class ProductSearchViewModel extends StateManager<ProductSearchState> {
  ProductSearchViewModel(this._searchProductsUseCase) : super(const ProductSearchState());

  final SearchProductsUseCase _searchProductsUseCase;

  Future<void> searchProduct(String query) async {
    state = state.copyWith(loading: true);
    try {
      final productList = await _searchProductsUseCase.execute(query);

      state.copyWith(productList: productList);
    } catch (e) {
      state.copyWith(error: '');
    }
    state = state.copyWith(loading: false);
  }
}

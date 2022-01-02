import 'package:core/core.dart';
import 'package:intro/src/home/state/product_search_state.dart';
import 'package:network/network.dart';

class ProductSearchCubit extends StateManager<ProductSearchState> {
  ProductSearchCubit(this.firebaseRepo) : super(const ProductSearchState());

  FirebaseManager firebaseRepo;

  Future<void> searchProduct(String query) async {
    state = state.copyWith(loading: true);
    try {
      final productSnapshot = await firebaseRepo.searchProducts(query);

      final List<ProductModel> list =
          List<ProductModel>.generate(productSnapshot.length, (index) {
        final ProductModel productModel =
            ProductModel.fromJson(productSnapshot[index]);
        return productModel;
      });

      state.copyWith(productList: list);
    } catch (e) {
      state.copyWith(error: '');
    }
    state = state.copyWith(loading: false);
  }
}

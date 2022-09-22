import 'package:injectable/injectable.dart';

import '../../../../core/state_manager/state_manager.dart';
import '../../../../data/firebase_manager/firestore_manager.dart';
import '../../../../data/models/product_model.dart';
import '../state/product_search_state.dart';

@injectable
class ProductSearchViewModel extends StateManager<ProductSearchState> {
  ProductSearchViewModel(this.firebaseRepo) : super(const ProductSearchState());

  FirebaseManager firebaseRepo;

  Future<void> searchProduct(String query) async {
    state = state.copyWith(loading: true);
    try {
      final productSnapshot = await firebaseRepo.searchProducts(query);

      final List<ProductModel> list = List<ProductModel>.generate(productSnapshot.length, (index) {
        final ProductModel productModel = ProductModel.fromJson(productSnapshot[index]);
        return productModel;
      });

      state.copyWith(productList: list);
    } catch (e) {
      state.copyWith(error: '');
    }
    state = state.copyWith(loading: false);
  }
}

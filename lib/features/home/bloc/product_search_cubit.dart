import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/core/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/common/models/product_model.dart';
import 'package:fluttercommerce/features/home/state/product_search_state.dart';

class ProductSearchCubit extends StateManager<ProductSearchState> {
  ProductSearchCubit(this.firebaseRepo) : super(const ProductSearchState());

  FirebaseManager firebaseRepo;

  void searchProduct(String query) async {
    state = state.copyWith(loading: true);
    try {
      var productSnapshot = await firebaseRepo.searchProducts(query);

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

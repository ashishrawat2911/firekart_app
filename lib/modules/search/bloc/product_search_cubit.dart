import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/modules/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/modules/common/models/product_model.dart';
import 'package:fluttercommerce/modules/search/state/product_search_state.dart';

class ProductSearchCubit extends Cubit<ProductSearchState> {
  FirestoreRepository firebaseRepo;

  ProductSearchCubit(this.firebaseRepo) : super(Idle());

  searchProduct(String query) async {
    emit(ProductSearchState.loading());
    try {
      var productSnapshot = await firebaseRepo.searchProducts(query);

      List<ProductModel> list =
          List<ProductModel>.generate(productSnapshot.length, (index) {
        ProductModel productModel =
            ProductModel.fromJson(productSnapshot[index]);
        return productModel;
      });
      emit(ProductSearchState.productList(list));
    } catch (e) {
      print(e.toString());
      emit(ProductSearchState.error());
    }
  }
}

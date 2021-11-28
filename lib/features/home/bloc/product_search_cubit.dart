import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/common/models/product_model.dart';
import 'package:fluttercommerce/features/home/state/product_search_state.dart';

class ProductSearchCubit extends Cubit<ProductSearchState> {
  FirebaseManager firebaseRepo;

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

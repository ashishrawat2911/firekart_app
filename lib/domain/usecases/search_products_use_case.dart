import 'package:fluttercommerce/data/models/product_model.dart';
import 'package:fluttercommerce/data/repository/firestore_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchProductsUseCase {
  final FirebaseRepository _firebaseRepository;

  SearchProductsUseCase(this._firebaseRepository);

  Future<List<ProductModel>> execute(String query) async {
    final productSnapshot = await _firebaseRepository.searchProducts(query);

    return List<ProductModel>.generate(productSnapshot.length, (index) {
      final ProductModel productModel = ProductModel.fromJson(productSnapshot[index]);
      return productModel;
    });
  }
}

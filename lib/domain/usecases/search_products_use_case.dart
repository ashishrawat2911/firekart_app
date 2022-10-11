import 'package:fluttercommerce/domain/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart';

import '../models/product_model.dart';

@injectable
class SearchProductsUseCase {
  final FirebaseRepository _firebaseRepository;

  SearchProductsUseCase(this._firebaseRepository);

  Future<List<Product>> execute(String query) async {
    return _firebaseRepository.searchProducts(query);
  }
}

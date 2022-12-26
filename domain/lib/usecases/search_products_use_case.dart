import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../models/product_model.dart';

@injectable
class SearchProductsUseCase {
  final FirebaseRepository _firebaseRepository;

  SearchProductsUseCase(this._firebaseRepository);

  Future<List<Product>> execute(String query) async {
    return _firebaseRepository.searchProducts(query);
  }
}

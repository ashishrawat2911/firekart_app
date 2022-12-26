import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class ProductDeleteCartUseCase {
  final FirebaseRepository _firebaseRepository;

  ProductDeleteCartUseCase(this._firebaseRepository);

  Future<void> execute(String productId) {
    return _firebaseRepository.delProductFromCart(productId);
  }
}

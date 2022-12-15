import 'package:domain/models/cart_model.dart';
import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class ProductAddToCartUseCase {
  final FirebaseRepository _firebaseRepository;

  ProductAddToCartUseCase(this._firebaseRepository);

  Future<void> execute(Cart cart) {
    return _firebaseRepository.addProductToCart(cart);
  }
}

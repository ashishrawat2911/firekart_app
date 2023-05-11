import 'package:fluttercommerce/domain/models/cart_model.dart';
import 'package:fluttercommerce/domain/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@injectable
class ProductAddToCartUseCase {
  final FirebaseRepository _firebaseRepository;

  ProductAddToCartUseCase(this._firebaseRepository);

  Future<void> execute(Cart cart) {
    return _firebaseRepository.addProductToCart(cart);
  }
}

import 'package:fluttercommerce/data/service/firebase_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductDeleteCartUseCase {
  final FirebaseService _firebaseRepository;

  ProductDeleteCartUseCase(this._firebaseRepository);

  Future<void> execute(String productId) {
    return _firebaseRepository.delProductFromCart(productId);
  }
}

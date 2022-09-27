import 'package:fluttercommerce/data/firebase_manager/firestore_manager.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductDeleteCartUseCase {
  final FirebaseRepository _firebaseRepository;

  ProductDeleteCartUseCase(this._firebaseRepository);

  Future<void> execute(String productId) {
    return _firebaseRepository.delProductFromCart(productId);
  }
}
import 'package:fluttercommerce/domain/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@injectable
class ProductDeleteCartUseCase {
  final FirebaseRepository _firebaseRepository;

  ProductDeleteCartUseCase(this._firebaseRepository);

  Future<void> execute(String productId) {
    return _firebaseRepository.delProductFromCart(productId);
  }
}

import 'package:fluttercommerce/data/service/firebase_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetItemsInCartUseCase {
  GetItemsInCartUseCase(this._firebaseRepository);

  final FirebaseService _firebaseRepository;

  Future<int> execute(String productId) {
    return _firebaseRepository.checkItemInCart(productId);
  }
}

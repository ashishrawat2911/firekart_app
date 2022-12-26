import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class GetItemsInCartUseCase {
  GetItemsInCartUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<int> execute(String productId) {
    return _firebaseRepository.checkItemInCart(productId);
  }
}

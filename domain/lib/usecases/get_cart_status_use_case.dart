import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../models/cart_model.dart';

@injectable
class GetCartStatusUseCase {
  final FirebaseRepository _firebaseRepository;

  GetCartStatusUseCase(this._firebaseRepository);

  Stream<List<Cart>> execute() {
    return _firebaseRepository.listenToCart();
  }
}

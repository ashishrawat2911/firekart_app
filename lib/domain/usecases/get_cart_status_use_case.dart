import 'package:fluttercommerce/data/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart';

import '../models/cart_model.dart';

@injectable
class GetCartStatusUseCase {
  final FirebaseRepository _firebaseRepository;

  GetCartStatusUseCase(this._firebaseRepository);

  Stream<List<Cart>> execute() {
    return _firebaseRepository.listenToCart();
  }
}

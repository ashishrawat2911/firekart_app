import 'package:domain/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../models/order_model.dart';

@injectable
class PlaceOrderUseCase {
  final FirebaseRepository _firebaseRepository;

  PlaceOrderUseCase(this._firebaseRepository);

  Future<void> execute(Order order) async {
    return _firebaseRepository.placeOrder(order);
  }
}

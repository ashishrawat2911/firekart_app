import 'package:fluttercommerce/data/firebase_manager/firestore_manager.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/order_model.dart';

@injectable
class PlaceOrderUseCase {
  final FirebaseRepository _firebaseRepository;

  PlaceOrderUseCase(this._firebaseRepository);

  Future<void> execute(OrderModel orderModel) async {
    await _firebaseRepository.placeOrder(orderModel);
    await _firebaseRepository.emptyCart();
  }
}

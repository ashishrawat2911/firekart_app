import 'package:fluttercommerce/data/repository/firebase_repository.dart';
import 'package:fluttercommerce/domain/models/order_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllOrdersUseCase {
  final FirebaseRepository _firebaseRepository;

  GetAllOrdersUseCase(this._firebaseRepository);

  Future<List<Order>> execute({bool nextOrder = false}) async {
    return _firebaseRepository.getAllOrders();
  }
}

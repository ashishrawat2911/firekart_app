import 'package:domain/models/order_model.dart';
import 'package:domain/repository/firebase_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart' hide Order;

@injectable
class GetAllOrdersUseCase {
  final FirebaseRepository _firebaseRepository;

  GetAllOrdersUseCase(this._firebaseRepository);

  Future<List<Order>> execute({bool nextOrder = false}) async {
    return _firebaseRepository.getAllOrders();
  }
}

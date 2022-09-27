import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttercommerce/data/firebase_manager/firestore_manager.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/order_model.dart';

@injectable
class GetAllOrdersUseCase {
  final FirebaseRepository _firebaseRepository;

  GetAllOrdersUseCase(this._firebaseRepository);

  final List<DocumentSnapshot> _documents = [];

  Future<List<OrderModel>> execute({bool nextOrder = false}) async {
    final List<DocumentSnapshot> docs =
        await _firebaseRepository.getAllProducts(nextOrder ? _documents[_documents.length - 1] : null);
    _documents.addAll(docs);
    return List<OrderModel>.generate(_documents.length, (index) => OrderModel.fromJson(_documents[index]))
        .toSet()
        .toList();
  }
}

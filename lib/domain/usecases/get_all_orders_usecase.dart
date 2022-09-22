import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttercommerce/data/firebase_manager/firestore_manager.dart';

import '../../data/models/order_model.dart';

class GetAllOrdersUseCase {
  final FirebaseManager _firebaseManager;

  GetAllOrdersUseCase(this._firebaseManager);

  final List<DocumentSnapshot> _documents = [];

  Future<List<OrderModel>> execute({bool nextOrder = false}) async {
    final List<DocumentSnapshot> docs =
        await _firebaseManager.getAllOrders(nextOrder ? _documents[_documents.length - 1] : null);
    _documents.addAll(docs);
    return List<OrderModel>.generate(_documents.length, (index) => OrderModel.fromJson(_documents[index])).toSet().toList();
  }
}

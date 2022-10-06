import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttercommerce/data/firebase_manager/firestore_manager.dart';
import 'package:fluttercommerce/data/models/product_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllProductsUseCase {
  final FirebaseRepository _firebaseRepository;

  GetAllProductsUseCase(this._firebaseRepository);

  final List<DocumentSnapshot> _documents = [];

  Future<List<ProductModel>> execute({
    bool nextOrder = false,
    String? condition,
    bool all = false,
  }) async {
    final List<DocumentSnapshot> docs = await _firebaseRepository.getAllProducts(
      documentSnapshot: nextOrder ? _documents[_documents.length - 1] : null,
      condition: condition,
      all: all,
    );
    _documents.addAll(docs);
    return List<ProductModel>.generate(_documents.length, (index) => ProductModel.fromJson(_documents[index]))
        .toSet()
        .toList();
  }
}

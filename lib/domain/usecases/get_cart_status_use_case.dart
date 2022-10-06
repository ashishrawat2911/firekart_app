import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttercommerce/data/firebase_manager/firestore_manager.dart';
import 'package:fluttercommerce/data/models/cart_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartStatusUseCase {
  final FirebaseRepository _firebaseRepository;

  GetCartStatusUseCase(this._firebaseRepository);

  Stream<List<CartModel>> execute() {
    return _firebaseRepository.cartStatusListen(_firebaseRepository.getUid()).map(
          (event) => List<CartModel>.generate(
            event.docs.length,
            (index) {
              final DocumentSnapshot documentSnapshot = event.docs[index];
              return CartModel.fromJson(documentSnapshot.data());
            },
          ),
        );
  }
}

import 'package:fluttercommerce/data/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart';

import '../models/cart_model.dart';

@injectable
class ProductAddToCartUseCase {
  final FirebaseRepository _firebaseRepository;

  ProductAddToCartUseCase(this._firebaseRepository);

  Future<void> execute(CartModel cartModel) async {
    return _firebaseRepository.addProductToCart(cartModel);
  }
}

import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/cart/state/cart_state.dart';

class CartCubit extends StateManager<CartState> {
  CartCubit(this._firebaseRepo) : super(const CartState());
  final FirebaseManager _firebaseRepo;

  void initCartValues(num cartValue) {
    state = state.copyWith(cartValue: cartValue as int);
  }
}

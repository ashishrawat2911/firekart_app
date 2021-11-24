import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/common/models/cartModel_model.dart';

class CartStatusCubit extends Cubit<List<CartModel>> {
  CartStatusCubit() : super([]);

  int get noOfItemsInCart => state.length;

  num get priceInCart {
    num price = 0;
    List.generate(state.length, (index) {
      price = price + (state[index].currentPrice * state[index].numOfItems);
    });
    return price;
  }

  String get currency => noOfItemsInCart > 0 ? state[0]?.currency : "";

  set cartItems(List<CartModel> value) {
    emit(value);
  }
}

extension CartStatus on List<CartModel> {
  int get noOfItemsInCart => length;

  num get priceInCart {
    num price = 0;
    List.generate(length, (index) {
      price = price + (this[index].currentPrice * this[index].numOfItems);
    });
    return price;
  }

  String get currency => noOfItemsInCart > 0 ? this[0]?.currency : "";
}

import 'package:flutter/cupertino.dart';
import 'package:fluttercommerce/src/models/cartModel_model.dart';

class CartStatusProvider with ChangeNotifier {
  List<CartModel> _cartItems = [];

  int get noOfItemsInCart => cartItems.length;

  num get priceInCart {
    num price = 0;
    List.generate(cartItems.length, (index) {
      price =
          price + (cartItems[index].currentPrice * cartItems[index].numOfItems);
    });
    return price;
  }

  String get currency => noOfItemsInCart > 0 ? cartItems[0]?.currency : "";

  List<CartModel> get cartItems => _cartItems;

  set cartItems(List<CartModel> value) {
    _cartItems = value;
    notifyListeners();
  }
}

import 'package:network/network.dart';

extension CartStatus on List<CartModel> {
  int get noOfItemsInCart => length;

  num get priceInCart {
    num price = 0;
    List.generate(length, (index) {
      price = price + (this[index].currentPrice * this[index].numOfItems);
    });
    return price;
  }

  String get currency => noOfItemsInCart > 0 ? this[0].currency : "";
}

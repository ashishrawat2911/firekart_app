import 'account_details_model.dart';

class Order {
  Order(
      {this.orderId,
      this.price,
      this.orderItems,
      this.orderedAt,
      this.orderStatus,
      this.currency,
      this.paymentId,
      this.signature,
      this.orderAddress});

  String? orderId;
  num? price;
  List<OrderItem>? orderItems;
  String? orderedAt;
  String? orderStatus;
  String? currency;
  String? paymentId;
  String? signature;
  Address? orderAddress;
}

class OrderItem {
  OrderItem({this.productId, this.image, this.name, this.unit, this.currency, this.price, this.noOfItems});

  String? productId;
  String? image;
  String? name;
  String? unit;
  String? currency;
  num? price;
  num? noOfItems;
}

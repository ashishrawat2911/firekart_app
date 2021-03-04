import 'package:fluttercommerce/src/models/account_details_model.dart';

class OrderModel {
  String? orderId;
  num? price;
  List<OrderItem>? orderItems;
  String? orderedAt;
  String? orderStatus;
  String? currency;
  String? paymentId;
  String? signature;
  Address? orderAddress;

  OrderModel(
      {this.orderId,
      this.price,
      this.orderItems,
      this.orderedAt,
      this.orderStatus,
      this.currency,
      this.paymentId,
      this.signature,
      this.orderAddress});

  factory OrderModel.fromJson(json) {
    return OrderModel(
        orderId: json['order_id'] as String?,
        price: json['price'] as num?,
        orderStatus: json['order_status'] as String?,
        orderedAt: json['ordered_at'] as String?,
        currency: json['currency'] as String?,
        paymentId: json['payment_id'] as String?,
        signature: json['signature'] as String?,
        orderAddress: Address.fromDocument(json['order_address']),
        orderItems: (json['order_items'] as List?)
            ?.map((e) => OrderItem.fromJson(e))
            .toList());
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'order_id': orderId,
        'price': price,
        'ordered_at': DateTime.now().toIso8601String(),
        "order_status": "Ordered",
        "currency": orderItems![0].currency,
        "payment_id": paymentId,
        "signature": signature,
        "order_address": orderAddress!.toJson(),
        'order_items': List<dynamic>.from(orderItems!.map((x) => x.toJson())),
      };

  @override
  String toString() {
    return 'OrderModel{orderId: $orderId, price: $price, orderItems: $orderItems}';
  }
}

class OrderItem {
  String? productId;
  String? image;
  String? name;
  String? unit;
  String? currency;
  num? price;
  num? noOfItems;

  OrderItem(
      {this.productId,
      this.image,
      this.name,
      this.unit,
      this.currency,
      this.price,
      this.noOfItems});

  factory OrderItem.fromJson(json) {
    return OrderItem(
      productId: json['product_id'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      currency: json['currency'] as String?,
      price: json['price'] as num?,
      noOfItems: json['no_of_items'] as num?,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'product_id': productId,
        'image': image,
        'name': name,
        'unit': unit,
        'currency': currency,
        'price': price,
        'no_of_items': noOfItems,
      };

  @override
  String toString() {
    return 'OrderItem{productId: $productId, image: $image, name: $name, unit: $unit, currency: $currency, price: $price, noOfItems: $noOfItems}';
  }
}

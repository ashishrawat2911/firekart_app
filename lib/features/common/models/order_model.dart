import 'package:fluttercommerce/features/common/models/account_details_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
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

  factory OrderModel.fromJson(json) => _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);

  @override
  String toString() {
    return 'OrderModel{orderId: $orderId, price: $price, orderItems: $orderItems}';
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
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
      productId: json['product_id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      unit: json['unit'] as String,
      currency: json['currency'] as String,
      price: json['price'] as num,
      noOfItems: json['no_of_items'] as num,
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

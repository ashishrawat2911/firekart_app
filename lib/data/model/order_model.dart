import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'account_details_model.dart';

part 'order_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class OrderModel {
  String orderId;
  num price;
  List<OrderItemModel> orderItems;
  String orderedAt;
  String orderStatus;
  String currency;
  String paymentId;
  String signature;
  AddressModel orderAddress;

  OrderModel(
    this.orderId,
    this.price,
    this.orderItems,
    this.orderedAt,
    this.orderStatus,
    this.currency,
    this.paymentId,
    this.signature,
    this.orderAddress,
  );

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);

  @override
  String toString() {
    return 'OrderModel{orderId: $orderId, price: $price, orderItems: $orderItems}';
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class OrderItemModel {
  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemModelToJson(this);

  String productId;
  String image;
  String name;
  String unit;
  String currency;
  num price;
  num noOfItems;

  @override
  String toString() {
    return 'OrderItem{productId: $productId, image: $image, name: $name, unit: $unit, currency: $currency, price: $price, noOfItems: $noOfItems}';
  }

  OrderItemModel(
    this.productId,
    this.image,
    this.name,
    this.unit,
    this.currency,
    this.price,
    this.noOfItems,
  );
}

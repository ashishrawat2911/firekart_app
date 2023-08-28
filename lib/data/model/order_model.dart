/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderModel {
  int id;
  num price;
  String orderedAt;
  String orderStatus;
  String paymentId;
  String signature;

  OrderModel(
    this.id,
    this.price,
    this.orderedAt,
    this.orderStatus,
    this.paymentId,
    this.signature,
  );

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);

  @override
  String toString() {
    return 'OrderModel{id: $id, price: $price, orderedAt: $orderedAt, orderStatus: $orderStatus, paymentId: $paymentId, signature: $signature}';
  }
}

@JsonSerializable(explicitToJson: true)
class OrderItemModel {
  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemModelToJson(this);

  int productId;
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

/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
import 'account_details_model.dart';

class Order {
  Order({
    required this.orderId,
    required this.price,
    required this.orderItems,
    required this.orderedAt,
    required this.orderStatus,
    required this.currency,
    required this.paymentId,
    required this.signature,
    required this.orderAddress,
  });

  String orderId;
  num price;
  List<OrderItem> orderItems;
  String orderedAt;
  String orderStatus;
  String currency;
  String paymentId;
  String signature;
  Address orderAddress;
}

class OrderItem {
  OrderItem({
    required this.productId,
    required this.image,
    required this.name,
    required this.unit,
    required this.currency,
    required this.price,
    required this.noOfItems,
  });

  String productId;
  String image;
  String name;
  String unit;
  String currency;
  num price;
  num noOfItems;
}

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

class Order {
  Order({
    required this.id,
    required this.price,
    required this.orderedAt,
    required this.orderStatus,
    required this.paymentId,
    required this.signature,
  });

  int id;
  num price;
  String orderedAt;
  String orderStatus;
  String paymentId;
  String signature;
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

  int productId;
  String image;
  String name;
  String unit;
  String currency;
  num price;
  num noOfItems;
}

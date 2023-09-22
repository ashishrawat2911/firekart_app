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

class AddOrder {
  AddOrder({
    required this.orderItems,
    required this.price,
    required this.orderedAt,
    required this.orderStatus,
    required this.paymentId,
    required this.signature,
  });

  List<AddOrderItem> orderItems;
  num price;
  String orderedAt;
  String orderStatus;
  String paymentId;
  String signature;
}

class AddOrderItem {
  AddOrderItem({
    required this.productId,
    required this.price,
    required this.noOfItems,
  });

  int productId;
  num price;
  num noOfItems;
}

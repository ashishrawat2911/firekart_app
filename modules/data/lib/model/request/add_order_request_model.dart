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
 * Licensed under the MIT sLicense.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:json_annotation/json_annotation.dart';

part 'add_order_request_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AddOrderRequestModel {
  AddOrderRequestModel({
    required this.orderItems,
    required this.price,
    required this.orderedAt,
    required this.orderStatus,
    required this.paymentId,
    required this.signature,
  });

  List<AddOrderItemRequestModel> orderItems;
  num price;
  String orderedAt;
  String orderStatus;
  String paymentId;
  String signature;

  Map<String, dynamic> toJson() => _$AddOrderRequestModelToJson(this);

  factory AddOrderRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddOrderRequestModelFromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AddOrderItemRequestModel {
  AddOrderItemRequestModel({
    required this.productId,
    required this.price,
    required this.noOfItems,
  });

  int productId;
  num price;
  num noOfItems;

  Map<String, dynamic> toJson() => _$AddOrderItemRequestModelToJson(this);

  factory AddOrderItemRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddOrderItemRequestModelFromJson(json);
}

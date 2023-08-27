// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrderRequestModel _$AddOrderRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddOrderRequestModel(
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) =>
              AddOrderItemRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as num,
      orderedAt: json['orderedAt'] as String,
      orderStatus: json['orderStatus'] as String,
      paymentId: json['paymentId'] as String,
      signature: json['signature'] as String,
    );

Map<String, dynamic> _$AddOrderRequestModelToJson(
        AddOrderRequestModel instance) =>
    <String, dynamic>{
      'orderItems': instance.orderItems.map((e) => e.toJson()).toList(),
      'price': instance.price,
      'orderedAt': instance.orderedAt,
      'orderStatus': instance.orderStatus,
      'paymentId': instance.paymentId,
      'signature': instance.signature,
    };

AddOrderItemRequestModel _$AddOrderItemRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddOrderItemRequestModel(
      productId: json['productId'] as int,
      price: json['price'] as num,
      noOfItems: json['noOfItems'] as num,
    );

Map<String, dynamic> _$AddOrderItemRequestModelToJson(
        AddOrderItemRequestModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'price': instance.price,
      'noOfItems': instance.noOfItems,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      json['id'] as int,
      json['price'] as num,
      json['orderedAt'] as String,
      json['orderStatus'] as String,
      json['paymentId'] as String,
      json['signature'] as String,
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'orderedAt': instance.orderedAt,
      'orderStatus': instance.orderStatus,
      'paymentId': instance.paymentId,
      'signature': instance.signature,
    };

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    OrderItemModel(
      json['productId'] as int,
      json['image'] as String,
      json['name'] as String,
      json['unit'] as String,
      json['currency'] as String,
      json['price'] as num,
      json['noOfItems'] as num,
    );

Map<String, dynamic> _$OrderItemModelToJson(OrderItemModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'image': instance.image,
      'name': instance.name,
      'unit': instance.unit,
      'currency': instance.currency,
      'price': instance.price,
      'noOfItems': instance.noOfItems,
    };

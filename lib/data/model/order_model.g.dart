// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      json['order_id'] as String,
      json['price'] as num,
      (json['order_items'] as List<dynamic>).map((e) => OrderItemModel.fromJson(e)).toList(),
      json['ordered_at'] as String,
      json['order_status'] as String,
      json['currency'] as String,
      json['payment_id'] as String,
      json['signature'] as String,
      AddressModel.fromJson(json['order_address']),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) => <String, dynamic>{
      'order_id': instance.orderId,
      'price': instance.price,
      'order_items': instance.orderItems.map((e) => e.toJson()).toList(),
      'ordered_at': instance.orderedAt,
      'order_status': instance.orderStatus,
      'currency': instance.currency,
      'payment_id': instance.paymentId,
      'signature': instance.signature,
      'order_address': instance.orderAddress.toJson(),
    };

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) => OrderItemModel(
      json['product_id'] as String,
      json['image'] as String,
      json['name'] as String,
      json['unit'] as String,
      json['currency'] as String,
      json['price'] as num,
      json['no_of_items'] as num,
    );

Map<String, dynamic> _$OrderItemModelToJson(OrderItemModel instance) => <String, dynamic>{
      'product_id': instance.productId,
      'image': instance.image,
      'name': instance.name,
      'unit': instance.unit,
      'currency': instance.currency,
      'price': instance.price,
      'no_of_items': instance.noOfItems,
    };

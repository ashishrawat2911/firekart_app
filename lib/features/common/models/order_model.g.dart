// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      orderId: json['order_id'] as String?,
      price: json['price'] as num?,
      orderItems: (json['order_items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e))
          .toList(),
      orderedAt: json['ordered_at'] as String?,
      orderStatus: json['order_status'] as String?,
      currency: json['currency'] as String?,
      paymentId: json['payment_id'] as String?,
      signature: json['signature'] as String?,
      orderAddress: json['order_address'] == null
          ? null
          : Address.fromJson(json['order_address']),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'price': instance.price,
      'order_items': instance.orderItems,
      'ordered_at': instance.orderedAt,
      'order_status': instance.orderStatus,
      'currency': instance.currency,
      'payment_id': instance.paymentId,
      'signature': instance.signature,
      'order_address': instance.orderAddress,
    };

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      productId: json['product_id'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      currency: json['currency'] as String?,
      price: json['price'] as num?,
      noOfItems: json['no_of_items'] as num?,
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
      'product_id': instance.productId,
      'image': instance.image,
      'name': instance.name,
      'unit': instance.unit,
      'currency': instance.currency,
      'price': instance.price,
      'no_of_items': instance.noOfItems,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel(
      json['productId'] as int,
      json['image'] as String,
      json['name'] as String,
      json['unit'] as String,
      json['currency'] as String,
      json['currentPrice'] as num,
      json['quantityPerUnit'] as num,
      json['quantity'] as int? ?? 0,
    );

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'productId': instance.productId,
      'image': instance.image,
      'name': instance.name,
      'unit': instance.unit,
      'currency': instance.currency,
      'currentPrice': instance.currentPrice,
      'quantityPerUnit': instance.quantityPerUnit,
      'quantity': instance.quantity,
    };

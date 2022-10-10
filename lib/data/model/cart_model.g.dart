// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel(
      json['product_id'] as String,
      json['image'] as String,
      json['name'] as String,
      json['unit'] as String,
      json['currency'] as String,
      json['current_price'] as num,
      json['quantity_per_unit'] as num,
      json['num_of_items'] as int? ?? 0,
    );

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'product_id': instance.productId,
      'image': instance.image,
      'name': instance.name,
      'unit': instance.unit,
      'currency': instance.currency,
      'current_price': instance.currentPrice,
      'quantity_per_unit': instance.quantityPerUnit,
      'num_of_items': instance.numOfItems,
    };

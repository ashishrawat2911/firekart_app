// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel(
      productId: json['product_id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      unit: json['unit'] as String,
      currency: json['currency'] as String,
      currentPrice: json['current_price'] as num,
      quantityPerUnit: json['quantity_per_unit'] as num,
      numOfItems: json['num_of_items'] as int? ?? 0,
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

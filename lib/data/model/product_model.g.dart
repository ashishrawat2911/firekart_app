// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      json['id'] as int,
      json['image'] as String,
      json['name'] as String,
      json['description'] as String,
      json['unit'] as String,
      json['currency'] as String,
      json['currentPrice'] as num,
      json['actualPrice'] as num,
      json['quantityPerUnit'] as num,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'unit': instance.unit,
      'currency': instance.currency,
      'currentPrice': instance.currentPrice,
      'actualPrice': instance.actualPrice,
      'quantityPerUnit': instance.quantityPerUnit,
    };

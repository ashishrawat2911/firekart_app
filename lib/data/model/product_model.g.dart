// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      json['product_id'] as String,
      json['image'] as String,
      json['name'] as String,
      json['description'] as String,
      json['unit'] as String,
      (json['categories'] as List<dynamic>).map((e) => e as String).toList(),
      json['currency'] as String,
      json['deal_of_the_day'] as bool,
      json['top_products'] as bool,
      json['on_sale'] as bool,
      json['current_price'] as num,
      json['actual_price'] as num,
      json['quantity_per_unit'] as num,
      json['is_product_available'] as bool? ?? false,
      (json['name_search'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'unit': instance.unit,
      'categories': instance.categories,
      'currency': instance.currency,
      'deal_of_the_day': instance.dealOfTheDay,
      'top_products': instance.topProducts,
      'on_sale': instance.onSale,
      'current_price': instance.currentPrice,
      'actual_price': instance.actualPrice,
      'quantity_per_unit': instance.quantityPerUnit,
      'is_product_available': instance.isProductAvailable,
      'name_search': instance.nameSearch,
    };

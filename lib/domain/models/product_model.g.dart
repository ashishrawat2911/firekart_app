// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      productId: json['product_id'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      currency: json['currency'] as String?,
      dealOfTheDay: json['deal_of_the_day'] as bool?,
      topProducts: json['top_products'] as bool?,
      onSale: json['on_sale'] as bool?,
      currentPrice: json['current_price'] as num?,
      actualPrice: json['actual_price'] as num?,
      quantityPerUnit: json['quantity_per_unit'] as num?,
      description: json['description'] as String?,
      isProductAvailable: json['is_product_available'] as bool? ?? false,
      nameSearch: (json['name_search'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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

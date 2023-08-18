/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductModel {
  final String productId;
  final String image;
  final String name;
  final String description;
  final String unit;
  final List<String> categories;
  final String currency;
  final bool dealOfTheDay;
  final bool topProducts;
  final bool onSale;
  final num currentPrice;
  final num actualPrice;
  final num quantityPerUnit;

  @JsonKey(defaultValue: false)
  final bool isProductAvailable;
  final List<String> nameSearch;

  ProductModel(
    this.productId,
    this.image,
    this.name,
    this.description,
    this.unit,
    this.categories,
    this.currency,
    this.dealOfTheDay,
    this.topProducts,
    this.onSale,
    this.currentPrice,
    this.actualPrice,
    this.quantityPerUnit,
    this.isProductAvailable,
    this.nameSearch,
  );

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  // 'name_search': setSearchParam(name),
  @override
  String toString() {
    return 'ProductModel{productId: $productId, image: $image, name: $name, unit: $unit, categories: $categories, currency: $currency, dealOfTheDay: $dealOfTheDay, topProducts: $topProducts, onSale: $onSale, currentPrice: $currentPrice, actualPrice: $actualPrice}';
  }

  List<String> setSearchParam(String name) {
    List<String> nameSearch = [];
    StringBuffer temp = StringBuffer();
    for (int i = 0; i < name.length; i++) {
      temp.write(name[i].toLowerCase());
      nameSearch.add(temp.toString());
    }
    return nameSearch;
  }
}

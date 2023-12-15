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

@JsonSerializable()
class ProductModel {
  final int id;
  final String image;
  final String name;
  final String description;
  final String unit;
  // @JsonKey(defaultValue: [])
  // final List<String> categories;
  final String currency;

  // final bool dealOfTheDay;
  // final bool topProducts;
  // final bool onSale;
  final num currentPrice;
  final num actualPrice;
  final num quantityPerUnit;

  // @JsonKey(defaultValue: false)
  // final bool isProductAvailable;
  // final List<String> nameSearch;

  ProductModel(
    this.id,
    this.image,
    this.name,
    this.description,
    this.unit,
    this.currency,
    // this.dealOfTheDay,
    // this.topProducts,
    // this.onSale,
    this.currentPrice,
    this.actualPrice,
    this.quantityPerUnit,
    // this.isProductAvailable,
    // this.nameSearch,
  );

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

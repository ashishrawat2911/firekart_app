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

part 'cart_model.g.dart';

@JsonSerializable()
class CartModel {
  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
  int productId;
  String image;
  String name;
  String unit;
  String currency;
  num currentPrice;
  num quantityPerUnit;
  @JsonKey(defaultValue: 0)
  int quantity;

  Map<String, dynamic> toJson() => _$CartModelToJson(this);

  CartModel(
    this.productId,
    this.image,
    this.name,
    this.unit,
    this.currency,
    this.currentPrice,
    this.quantityPerUnit, [
    this.quantity = 0,
  ]);
}

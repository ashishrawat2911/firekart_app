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
class Product {
  final int productId;
  final String image;
  final String name;
  final String description;
  final String unit;
  final String currency;

  // final bool topProducts;
  // final bool onSale;
  final num currentPrice;
  final num actualPrice;
  final num quantityPerUnit;

  // final bool isProductAvailable;
  // final List<String> nameSearch;

  Product({
    // required this.nameSearch,
    required this.productId,
    required this.image,
    required this.name,
    required this.unit,
    required this.currency,
    // required this.topProducts,
    // required this.onSale,
    required this.currentPrice,
    required this.actualPrice,
    required this.quantityPerUnit,
    required this.description,
    // this.isProductAvailable = false,
  });
}

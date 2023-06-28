/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
class Cart {
  Cart({
    required this.productId,
    required this.image,
    required this.name,
    required this.unit,
    required this.currency,
    required this.currentPrice,
    required this.quantityPerUnit,
    this.numOfItems = 0,
  });

  String productId;
  String image;
  String name;
  String unit;
  String currency;
  num currentPrice;
  num quantityPerUnit;
  int numOfItems;
}

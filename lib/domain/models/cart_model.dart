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
class Cart {
  Cart({
    required this.productId,
    required this.image,
    required this.name,
    required this.unit,
    required this.currency,
    required this.currentPrice,
    required this.quantityPerUnit,
    required this.numOfItems,
  });

  int productId;
  String image;
  String name;
  String unit;
  String currency;
  num currentPrice;
  num quantityPerUnit;
  int numOfItems;

  @override
  String toString() {
    return 'Cart{productId: $productId, image: $image, name: $name, unit: $unit, currency: $currency, currentPrice: $currentPrice, quantityPerUnit: $quantityPerUnit, numOfItems: $numOfItems}';
  }
}

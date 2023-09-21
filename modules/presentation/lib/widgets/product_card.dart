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
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:assets/res/app_theme.dart';

class ProductCardArgs {
  final VoidCallback onTap;
  final String name;
  final String image;
  final String currency;
  final num currentPrice;
  final num actualPrice;
  final num quantityPerUnit;
  final String unit;

  ProductCardArgs({
    required this.onTap,
    required this.name,
    required this.image,
    required this.currency,
    required this.currentPrice,
    required this.actualPrice,
    required this.quantityPerUnit,
    required this.unit,
  });
}

class ProductCard extends StatelessWidget {
  const ProductCard(this.productCardArgs, {Key? key}) : super(key: key);

  final ProductCardArgs productCardArgs;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: productCardArgs.onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: AspectRatio(
                aspectRatio: 1.6,
                child: Hero(
                  tag: productCardArgs.image,
                  child: CachedNetworkImage(
                    imageUrl: productCardArgs.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    productCardArgs.name,
                    style: context.textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '${productCardArgs.currency}${productCardArgs.currentPrice}',
                        style: context.textTheme.labelLarge,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${productCardArgs.currency}${productCardArgs.actualPrice}',
                        style: context.textTheme.labelLarge
                            ?.copyWith(decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${productCardArgs.quantityPerUnit}${productCardArgs.unit}',
                    style: context.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

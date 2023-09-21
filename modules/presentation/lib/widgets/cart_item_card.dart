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
import 'package:assets/res/colors.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:localization/localization.dart';

import 'package:flutter/material.dart';
import 'package:assets/res/app_theme.dart';

import 'action_text.dart';
import 'common_app_loader.dart';

enum AddButton { add, minus }

class CartItemCardArgs {
  final String name;
  final String image;
  final String price;
  final String totalPrice;
  final String quantity;
  final int itemCount;
  final bool deleteLoading;
  final bool isLoading;

  final int index;
  final EdgeInsets? margin;
  final ValueChanged<int> onDeleted;
  final ValueChanged<int> onIncrement;
  final ValueChanged<int> onDecrement;

  CartItemCardArgs({
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
    required this.itemCount,
    required this.totalPrice,
    required this.deleteLoading,
    required this.isLoading,
    this.margin,
    required this.index,
    required this.onDeleted,
    required this.onIncrement,
    required this.onDecrement,
  });
}

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    required this.cartItemCardArgs,
    Key? key,
  }) : super(key: key);
  final CartItemCardArgs cartItemCardArgs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: cartItemCardArgs.margin,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CachedNetworkImage(
                        imageUrl: cartItemCardArgs.image,
                        height: 68,
                        width: 68,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartItemCardArgs.name,
                            style: context.textTheme.bodyLarge,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${cartItemCardArgs.price}/ ${cartItemCardArgs.quantity}',
                            style: context.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Builder(
                    builder: (BuildContext context) {
                      if (cartItemCardArgs.deleteLoading) {
                        return const CommonAppLoader(
                          size: 20,
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: ActionText(
                          Localization.value.deleteCaps,
                          onTap: () {
                            cartItemCardArgs.onDeleted(cartItemCardArgs.index);
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110,
                    child: Row(
                      children: [
                        addButton(
                          false,
                          cartItemCardArgs.isLoading
                              ? () {}
                              : () {
                                  cartItemCardArgs
                                      .onDecrement(cartItemCardArgs.index);
                                },
                        ),
                        Expanded(
                          child: Center(
                            child: cartItemCardArgs.isLoading
                                ? const CommonAppLoader(
                                    size: 20,
                                    strokeWidth: 3,
                                  )
                                : Text(
                                    '${cartItemCardArgs.itemCount}',
                                    style: context.textTheme.bodyMedium,
                                  ),
                          ),
                        ),
                        addButton(
                          true,
                          cartItemCardArgs.isLoading
                              ? () {}
                              : () {
                                  cartItemCardArgs
                                      .onIncrement(cartItemCardArgs.index);
                                },
                        ),
                      ],
                    ),
                  ),
                  Text(
                    cartItemCardArgs.totalPrice,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget addButton(bool isAdd, VoidCallback onTap) => GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Container(
          height: 32,
          width: 32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isAdd ? AppColors.primaryColor : AppColors.white,
          ),
          child: Center(
            child: Icon(
              isAdd ? Icons.add : Icons.remove,
              color: isAdd ? AppColors.white : AppColors.color4C4C6F,
            ),
          ),
        ),
      );
}

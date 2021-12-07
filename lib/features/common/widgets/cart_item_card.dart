import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/cart/state/cart_state.dart';
import 'package:fluttercommerce/features/common/models/cart_model.dart';
import 'package:fluttercommerce/features/common/widgets/action_text.dart';
import 'package:fluttercommerce/features/common/widgets/common_app_loader.dart';

enum AddButton { Add, Minus }

class CartItemCard extends StatelessWidget {
   const CartItemCard({Key? key,
    this.margin,
    required this.cartModel,
    required this.index,
    required this.onDeleted,
    required this.onIncrement,
    required this.onDecrement,
    required this.cartDataLoading,
  }) : super(key: key);

  final CartModel cartModel;
  final int index;
  final EdgeInsets? margin;
  final ValueChanged<int> onDeleted;
  final ValueChanged<int> onIncrement;
  final ValueChanged<int> onDecrement;

  final CartDataLoading cartDataLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10),
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
                        imageUrl: cartModel.image,
                        height: 68,
                        width: 68,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartModel.name,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: AppColors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${cartModel.currency}${cartModel.currentPrice} / ${cartModel.quantityPerUnit} ${cartModel.unit}",
                            style: TextStyle(
                                fontSize: 14, color: AppColors.color81819A),
                          ),
                        ],
                      )
                    ],
                  ),
                  Builder(
                    builder: (BuildContext context) {
                      if (cartDataLoading.deleteLoading) {
                        return CommonAppLoader(
                          size: 20,
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ActionText(
                          StringsConstants.deleteCaps,
                          onTap: () {
                            onDeleted(index);
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
              SizedBox(
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
                            cartDataLoading.isLoading
                                ? () {}
                                : () {
                                    onIncrement(index);
                                  }),
                        Expanded(
                            child: Center(
                                child: cartDataLoading.isLoading
                                    ? CommonAppLoader(
                                        size: 20,
                                        strokeWidth: 3,
                                      )
                                    : Text(
                                        "${cartModel.numOfItems}",
                                        style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 14,
                                        ),
                                      ))),
                        addButton(
                            true,
                            cartDataLoading.isLoading
                                ? () {}
                                : () {
                                    onDecrement(index);
                                  })
                      ],
                    ),
                  ),
                  Text(
                    "${cartModel.currency}${cartModel.currentPrice * cartModel.numOfItems}",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                    ),
                  )
                ],
              )
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
              color: isAdd ? AppColors.primaryColor : AppColors.colorE2E6EC),
          child: Center(
            child: Icon(
              isAdd ? Icons.add : Icons.remove,
              color: isAdd ? AppColors.white : AppColors.color81819A,
            ),
          ),
        ),
      );
}

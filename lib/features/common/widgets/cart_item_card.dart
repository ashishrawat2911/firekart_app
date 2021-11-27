import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/checkout/bloc/cart_item_cubit.dart';
import 'package:fluttercommerce/features/checkout/state/cart_item_state.dart';
import 'package:fluttercommerce/features/common/models/cart_model.dart';
import 'package:fluttercommerce/features/common/widgets/action_text.dart';
import 'package:fluttercommerce/features/common/widgets/common_app_loader.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';

enum AddButton { Add, Minus }

class CartItemCard extends StatefulWidget {
  final CartModel? cartModel;
  final EdgeInsets? margin;

  CartItemCard({this.margin, required this.cartModel});

  @override
  _CartItemCardState createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  var cartItemCubit = DI.container<CartItemCubit>();

  @override
  void initState() {
    cartItemCubit.initCartValues(widget.cartModel!.numOfItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
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
                        imageUrl: widget.cartModel!.image,
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
                            widget.cartModel!.name,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: AppColors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${widget.cartModel!.currency}${widget.cartModel!.currentPrice} / ${widget.cartModel!.quantityPerUnit} ${widget.cartModel!.unit}",
                            style: TextStyle(
                                fontSize: 14, color: AppColors.color81819A),
                          ),
                        ],
                      )
                    ],
                  ),
                  BlocBuilder<CartItemCubit, CartItemState>(
                    bloc: cartItemCubit,
                    builder: (BuildContext context, CartItemState state) {
                      if (state is CartDeleteLoading) {
                        return CommonAppLoader(
                          size: 20,
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ActionText(
                          StringsConstants.deleteCaps,
                          onTap: () {
                            cartItemCubit.deleteItem(widget.cartModel!);
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
              BlocBuilder<CartItemCubit, CartItemState>(
                bloc: cartItemCubit,
                builder: (BuildContext context, CartItemState state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 110,
                        child: Row(
                          children: [
                            addButton(
                                false,
                                state is CartDataLoading
                                    ? () {}
                                    : () {
                                        cartItemCubit.updateCartValues(
                                            widget.cartModel!,
                                            widget.cartModel!.numOfItems,
                                            false);
                                      }),
                            Expanded(
                                child: Center(
                                    child: state is CartDataLoading
                                        ? CommonAppLoader(
                                            size: 20,
                                            strokeWidth: 3,
                                          )
                                        : Text(
                                            "${widget.cartModel!.numOfItems}",
                                            style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 14,
                                            ),
                                          ))),
                            addButton(
                                true,
                                state is CartDataLoading
                                    ? () {}
                                    : () {
                                        cartItemCubit.updateCartValues(
                                            widget.cartModel!,
                                            widget.cartModel!.numOfItems,
                                            true);
                                      })
                          ],
                        ),
                      ),
                      Text(
                        "${widget.cartModel!.currency}${widget.cartModel!.currentPrice * widget.cartModel!.numOfItems}",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                        ),
                      )
                    ],
                  );
                },
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

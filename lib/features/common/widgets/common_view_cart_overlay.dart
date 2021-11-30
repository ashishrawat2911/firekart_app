import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/navigation/navigation_handler.dart';
import 'package:fluttercommerce/features/cart/bloc/cart_status_bloc.dart';
import 'package:fluttercommerce/features/common/models/cart_model.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/app/res/text_styles.dart';
import 'package:fluttercommerce/features/app/navigation/app_router.gr.dart';

class CommonViewCartOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartStatusCubit, List<CartModel>>(
      bloc: DI.container(),
      builder: (context, state) {
        return AnimatedCrossFade(
          duration: Duration(microseconds: 3000),
          firstChild: Container(
            height: 50,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "${state.noOfItemsInCart} item${state.noOfItemsInCart > 1 ? "s" : ""} | ${state.currency}${state.priceInCart}",
                  style: AppTextStyles.medium16White,
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    NavigationHandler.navigateTo( CartScreenRoute());
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.shopping_cart, color: AppColors.white),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        StringsConstants.viewCart,
                        style: AppTextStyles.medium16White,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          secondChild: SizedBox(),
          crossFadeState: state.noOfItemsInCart > 0
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        );
      },
    );
  }
}

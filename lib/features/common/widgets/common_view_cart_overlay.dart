import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/app/res/text_styles.dart';
import 'package:fluttercommerce/features/cart/bloc/cart_cubit.dart';
import 'package:fluttercommerce/features/cart/state/cart_state.dart';

class CommonViewCartOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      bloc: DI.container(),
      builder: (context, state) {
        return AnimatedCrossFade(
          duration: const Duration(microseconds: 3000),
          firstChild: Container(
            height: 50,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "${state.cartList.noOfItemsInCart} item${state.cartList.noOfItemsInCart > 1 ? "s" : ""} | ${state.cartList.currency}${state.cartList.priceInCart}",
                  style: AppTextStyles.medium16White,
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    // NavigationHandler.navigateTo(CartScreenRoute());
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.shopping_cart, color: AppColors.white),
                      const SizedBox(
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
          secondChild: const SizedBox(),
          crossFadeState: state.cartList.noOfItemsInCart > 0 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        );
      },
    );
  }
}

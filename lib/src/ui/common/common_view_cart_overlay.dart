import 'package:flutter/material.dart';
import 'package:fluttercommerce/src/notifiers/cart_status_provider.dart';
import 'package:fluttercommerce/src/notifiers/provider_notifier.dart';
import 'package:fluttercommerce/src/res/app_colors.dart';
import 'package:fluttercommerce/src/res/string_constants.dart';
import 'package:fluttercommerce/src/res/text_styles.dart';
import 'package:fluttercommerce/src/routes/routers.dart';

class CommonViewCartOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderNotifier<CartStatusProvider>(
      child: (CartStatusProvider value) {
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
                  "${value.noOfItemsInCart} item${value.noOfItemsInCart > 1 ? "s" : ""} | ${value.currency}${value.priceInCart}",
                  style: AppTextStyles.medium16White,
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.cartScreen);
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
          crossFadeState: value.noOfItemsInCart > 0
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        );
      },
    );
  }
}

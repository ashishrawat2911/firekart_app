import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CommonViewCartOverlayArgs {
  String title;
  bool isCartEmpty;

  CommonViewCartOverlayArgs({required this.title, required this.isCartEmpty});
}

class CommonViewCartOverlay extends StatelessWidget {
  const CommonViewCartOverlay({Key? key, required this.args}) : super(key: key);

  final CommonViewCartOverlayArgs args;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(microseconds: 3000),
      firstChild: Container(
        height: 50,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              args.title,
              style: AppTextStyles.t16,
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
                    style: AppTextStyles.t16,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      secondChild: const SizedBox(),
      crossFadeState: args.isCartEmpty
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
    );
  }
}

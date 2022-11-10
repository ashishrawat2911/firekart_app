import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/state_manager/base_view.dart';
import '../../../../domain/models/product_model.dart';
import '../../../res/app_colors.dart';
import '../../../res/string_constants.dart';
import '../../../res/text_styles.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../../../widgets/common_app_loader.dart';
import '../../../widgets/common_view_cart_overlay.dart';
import '../state/add_to_cart_state.dart';
import '../view_model/product_view_model.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage(this.product, {Key? key}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return BaseView<ProductViewModel, AddToCartState>(
      onViewModelReady: (viewModel) {
        viewModel.checkItemInCart(product.productId);
        viewModel.listenToProduct(product.productId);
      },
      builder: (context, viewModel, state) => Scaffold(
        floatingActionButton: CommonViewCartOverlay(
          args: CommonViewCartOverlayArgs(
            title: "${state.noOfItems} item${state.noOfItems > 1 ? "s" : ""} ",
            isCartEmpty: (state.noOfItems > 0),
            onCartTap: () {
              NavigationHandler.navigateTo(const CartScreenRoute());
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          title: Text(product.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: product.image,
                fit: BoxFit.fill,
              ),
              Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.name,
                      style: AppTextStyles.t33,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(product.description),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "${product.currency}${product.currentPrice} / ${product.quantityPerUnit} ${product.unit}",
                          style: AppTextStyles.t5,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        addCartView(state, viewModel),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget addCartView(AddToCartState state, ProductViewModel viewModel) {
    int cartValue = 0;
    cartValue = state.noOfItems as int;
    return AnimatedCrossFade(
        firstChild: addButton(state, viewModel),
        secondChild: SizedBox(
          height: 30,
          width: 110,
          child: Row(
            children: [
              changeCartValues(
                  false,
                  state.cartDataLoading
                      ? () {}
                      : () {
                          viewModel.updateCartValues(product, cartValue, false);
                        }),
              Expanded(
                  child: state.cartDataLoading
                      ? const Center(
                          child: CommonAppLoader(
                          size: 20,
                          strokeWidth: 3,
                        ))
                      : Center(
                          child: Text(
                          "$cartValue",
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 14,
                          ),
                        ))),
              changeCartValues(
                  true,
                  state.cartDataLoading
                      ? () {}
                      : () {
                          viewModel.updateCartValues(product, cartValue, true);
                        })
            ],
          ),
        ),
        crossFadeState: (cartValue > 0) ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 100));
  }

  Widget addButton(AddToCartState state, ProductViewModel viewModel) {
    return AnimatedCrossFade(
      firstChild: InkWell(
        onTap: () {
          viewModel.addToCart(product);
        },
        child: Container(
          height: 30,
          width: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(border: Border.all(width: 1, color: AppColors.colorC4C4C4)),
          child: Text(
            StringsConstants.add,
            style: AppTextStyles.t35,
          ),
        ),
      ),
      secondChild: const SizedBox(
          height: 30,
          width: 110,
          child: Center(
              child: CommonAppLoader(
            size: 20,
            strokeWidth: 3,
          ))),
      crossFadeState: state.addToCardLoading ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 100),
    );
  }

  Widget changeCartValues(bool isAdd, VoidCallback onTap) => GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Container(
          height: 32,
          width: 32,
          alignment: Alignment.center,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: isAdd ? AppColors.primaryColor : AppColors.colorE2E6EC),
          child: Center(
            child: Icon(
              isAdd ? Icons.add : Icons.remove,
              size: 14,
              color: isAdd ? AppColors.white : AppColors.color81819A,
            ),
          ),
        ),
      );
}

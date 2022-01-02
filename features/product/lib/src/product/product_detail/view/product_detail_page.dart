import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:network/network.dart';
import 'package:product/src/product/product_detail/state/add_to_cart_state.dart';
import 'package:product/src/product/product_detail/view_model/product_view_model.dart';
import 'package:widgets/widgets.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage(this.productModel, {Key? key}) : super(key: key);

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return StateBuilder<ProductViewModel, AddToCartState>(
      onViewModelReady: (viewModel) {
        viewModel.checkItemInCart(productModel.productId!);
        viewModel.listenToProduct(productModel.productId!);
      },
      builder: (context, viewModel, state) => Scaffold(
        floatingActionButton: CommonViewCartOverlay(
          args: CommonViewCartOverlayArgs(
            //TODO add cart its in state
            // title: "${state.cartList.noOfItemsInCart} item${state.cartList.noOfItemsInCart > 1
            //     ? "s"
            //     : ""} | ${state.cartList.currency}${state.cartList.priceInCart}"
            // , isCartEmpty: !(state.cartList.noOfItemsInCart > 0)
            isCartEmpty: !(state.noOfItems > 0),
            title: "",
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          title: Text(productModel.name!),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: productModel.image!,
                fit: BoxFit.fill,
              ),
              Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      productModel.name!,
                      style: AppTextStyles.t33,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(productModel.description!),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "${productModel.currency}${productModel.currentPrice} / ${productModel.quantityPerUnit} ${productModel.unit}",
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
                          viewModel.updateCartValues(
                              productModel, cartValue, false);
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
                          viewModel.updateCartValues(
                              productModel, cartValue, true);
                        })
            ],
          ),
        ),
        crossFadeState: (state.cartDataLoading)
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 100));
  }

  Widget addButton(AddToCartState state, ProductViewModel viewModel) {
    return AnimatedCrossFade(
      firstChild: InkWell(
        onTap: () {
          viewModel.addToCart(productModel);
        },
        child: Container(
          height: 30,
          width: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.colorC4C4C4)),
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
      crossFadeState: state.addToCardLoading
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
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
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isAdd ? AppColors.primaryColor : AppColors.colorE2E6EC),
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

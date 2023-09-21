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
import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:localization/localization.dart';
import 'package:core/state_manager/base_view.dart';

import 'package:domain/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:assets/res/app_theme.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:assets/res/colors.gen.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/route_handler.dart';
import '../../../widgets/common_app_loader.dart';
import '../../../widgets/common_view_cart_overlay.dart';
import '../state/add_to_cart_state.dart';
import '../view_model/product_view_model.dart';

@RoutePage()
class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage(this.productId, {Key? key}) : super(key: key);

  final int productId;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ProductViewModel, AddToCartState>(
      onViewModelReady: (viewModel) {
        viewModel.initialize(widget.productId);
      },
      builder: (context, viewModel, state) => VisibilityDetector(
        onVisibilityChanged: (visibilityInfo) {
          var visiblePercentage = visibilityInfo.visibleFraction * 100;
          if (visiblePercentage == 100) {
            viewModel.checkItemInCart(widget.productId);
          }
        },
        key: const Key('ProductDetailPage'),
        child: Scaffold(
          floatingActionButton: CommonViewCartOverlay(
            args: CommonViewCartOverlayArgs(
              title:
                  "${state.noOfItems} item${state.noOfItems > 1 ? "s" : ""} ",
              isCartEmpty: !state.showAddButton,
              onCartTap: () {
                RouteHandler.routeTo(const CartRoute());
              },
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          appBar: AppBar(
            title: Text(
              state.product is ProductData
                  ? (state.product as ProductData).product.name
                  : '',
            ),
          ),
          body: state.product.when(
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            data: (product) {
              return SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Hero(
                      tag: product.image,
                      child: CachedNetworkImage(
                        imageUrl: product.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            product.name,
                            style: context.textTheme.displayLarge,
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
                                '${product.currency}${product.currentPrice} / ${product.quantityPerUnit} ${product.unit}',
                                style: context.textTheme.bodySmall
                                    ?.copyWith(fontSize: 16),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              addCartView(state, viewModel, product),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            error: (error) {
              return Text(error.errorMessage);
            },
          ),
        ),
      ),
    );
  }

  Widget addCartView(
    AddToCartState state,
    ProductViewModel viewModel,
    Product product,
  ) {
    int cartValue = 0;
    cartValue = state.noOfItems as int;
    return AnimatedCrossFade(
      firstChild: addButton(state, viewModel, product),
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
                        product,
                        cartValue,
                        false,
                      );
                    },
            ),
            Expanded(
              child: state.cartDataLoading
                  ? const Center(
                      child: CommonAppLoader(
                        size: 20,
                        strokeWidth: 3,
                      ),
                    )
                  : Center(
                      child: Text(
                        '$cartValue',
                        style: context.textTheme.bodyMedium,
                      ),
                    ),
            ),
            changeCartValues(
              true,
              state.cartDataLoading
                  ? () {}
                  : () {
                      viewModel.updateCartValues(
                        product,
                        cartValue,
                        true,
                      );
                    },
            ),
          ],
        ),
      ),
      crossFadeState: (!state.showAddButton)
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 100),
    );
  }

  Widget addButton(
    AddToCartState state,
    ProductViewModel viewModel,
    Product product,
  ) {
    return AnimatedCrossFade(
      firstChild: InkWell(
        onTap: () {
          viewModel.addToCart(product);
        },
        child: Container(
          height: 30,
          width: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.dropShadow),
          ),
          child: Text(
            Localization.value.add,
            style: context.textTheme.labelLarge?.copyWith(
              color: AppColors.primaryColor,
            ),
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
          ),
        ),
      ),
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
            color: isAdd ? AppColors.primaryColor : AppColors.white,
          ),
          child: Center(
            child: Icon(
              isAdd ? Icons.add : Icons.remove,
              size: 14,
              color: isAdd ? AppColors.white : AppColors.color4C4C6F,
            ),
          ),
        ),
      );
}

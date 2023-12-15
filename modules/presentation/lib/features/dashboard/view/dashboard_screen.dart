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
import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:localization/localization.dart';
import 'package:core/state_manager/base_view.dart';

import 'package:domain/models/product_model.dart';
import 'package:assets/res/app_theme.dart';
import 'package:assets/res/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../routes/app_router.gr.dart';
import '../../../routes/route_handler.dart';
import '../../../widgets/action_text.dart';
import '../../../widgets/product_card.dart';
import '../state/dashboard_state.dart';
import '../view_model/dashboard_view_model.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Future<void> fetchProductData(DashboardViewModel viewModel) async {
    unawaited(viewModel.fetchProductData(ProductData.topProducts));
  }

  @override
  Widget build(BuildContext context) =>
      BaseView<DashboardViewModel, DashboardState>(
        onViewModelReady: fetchProductData,
        builder: (context, viewModel, state) => Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              Localization.value.products,
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              RouteHandler.routeTo(const AllProductListRoute());
            },
            label: Text(
              Localization.value.viewAllProducts,
              style: context.textTheme.labelSmall?.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
          body: RefreshIndicator(
            onRefresh: () => fetchProductData(viewModel),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: <Widget>[
                  productsGrids('Products', state.products),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  Shimmer productLoader() => Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(bottom: 10),
            crossAxisCount: 3,
            shrinkWrap: true,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            children: List.generate(
              6,
              (index) => Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: AspectRatio(
                        aspectRatio: 1.5,
                        child: Container(
                          height: 100,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 20,
                            width: 50,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 20,
                            width: 50,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 20,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget productsGrids(String title, List<Product> products) {
    // if (products == null) return Container();
    return Container(
      margin: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: context.textTheme.displayMedium,
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                child: ActionText(
                  Localization.value.viewAllCaps,
                  onTap: () {
                    RouteHandler.routeTo(
                      const AllProductListRoute(),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(bottom: 10, right: 10),
            crossAxisCount: 3,
            shrinkWrap: true,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            children: List.generate(
              products.length,
              (index) => ProductCard(productModelToArgs(products[index])),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  ProductCardArgs productModelToArgs(Product productModel) => ProductCardArgs(
        image: productModel.image,
        name: productModel.name,
        currency: productModel.currency,
        onTap: () {
          RouteHandler.routeTo(
            ProductDetailRoute(
              productId: productModel.productId,
            ),
          );
        },
        actualPrice: productModel.actualPrice,
        currentPrice: productModel.currentPrice,
        quantityPerUnit: productModel.quantityPerUnit,
        unit: productModel.unit,
      );
}

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
import 'package:localization/localization.dart';
import 'package:core/state/result_state.dart';
import 'package:core/state_manager/base_view.dart';
import 'package:domain/models/product_model.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_router.gr.dart';
import '../../../routes/route_handler.dart';
import '../../../widgets/common_app_loader.dart';
import '../../../widgets/product_card.dart';
import '../../../widgets/result_state_builder.dart';
import '../view_model/all_product_cubit.dart';

@RoutePage()
class AllProductListScreen extends StatefulWidget {
  const AllProductListScreen({
    Key? key,
  }) : super(key: key);

  @override
  State createState() => _AllProductListScreenState();
}

class _AllProductListScreenState extends State<AllProductListScreen> {
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<AllProductCubit, ResultState<List<Product>>>(
      onViewModelReady: (viewModel) {
        viewModel.fetchProducts();
      },
      builder: (context, viewModel, state) => Scaffold(
        appBar: AppBar(
          title: Text(Localization.value.allProducts),
          actions: <Widget>[
            InkWell(
              onTap: () {
                RouteHandler.routeTo(
                  const SearchItemRoute(),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Icon(Icons.search),
              ),
            ),
          ],
        ),
        body: ResultStateBuilder(
          state: state,
          loadingWidget: (bool isReloading) {
            return const Center(
              child: CommonAppLoader(),
            );
          },
          errorWidget: (String error) {
            return Container();
          },
          dataWidget: dataWidget,
        ),
      ),
    );
  }

  Widget dataWidget(List<Product> productList) {
    return GridView.builder(
      controller: controller,
      itemCount: productList.length,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 30),
      itemBuilder: (BuildContext context, int index) {
        return ProductCard(productModelToArgs(productList[index]));
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
      ),
    );
  }

  ProductCardArgs productModelToArgs(Product productModel) {
    return ProductCardArgs(
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
}

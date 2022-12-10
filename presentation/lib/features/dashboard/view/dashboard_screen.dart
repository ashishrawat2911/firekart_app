import 'package:core/state/result_state.dart';
import 'package:core/state_manager/base_view.dart';
import 'package:core/theme/theme_provider.dart';
import 'package:domain/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:presentation/res/colors.gen.dart';
import 'package:shimmer/shimmer.dart';

import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../../../widgets/action_text.dart';
import '../../../widgets/product_card.dart';
import '../../../widgets/result_state_builder.dart';
import '../state/dashboard_state.dart';
import '../view_model/dashboard_view_model.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Future<void> fetchProductData(DashboardViewModel viewModel) async {
    viewModel.fetchProductData(ProductData.dealOfTheDay);
    viewModel.fetchProductData(ProductData.onSale);
    viewModel.fetchProductData(ProductData.topProducts);
  }

  @override
  Widget build(BuildContext context) =>
      BaseView<DashboardViewModel, DashboardState>(
        onViewModelReady: (viewModel) {
          fetchProductData(viewModel);
        },
        builder: (context, viewModel, state) => Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              Localization.value.products,
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              NavigationHandler.navigateTo<void>(AllProductListScreenRoute());
            },
            label: Text(
              Localization.value.viewAllProducts,
              style: ThemeProvider.textTheme.overline?.copyWith(
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
                  const SizedBox(
                    height: 20,
                  ),
                  productDataBuilder(
                      state.dealOfTheDay, Localization.value.dealOfTheDay),
                  productDataBuilder(state.onSale, Localization.value.onSale),
                  productDataBuilder(
                      state.topProducts, Localization.value.topProducts),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      );

  Widget productDataBuilder(
          ResultState<List<Product>> resultState, String title) =>
      ResultStateBuilder(
        state: resultState,
        errorWidget: (String error) => Column(
          children: <Widget>[
            Center(child: Text(error)),
          ],
        ),
        dataWidget: (List<Product> value) => productsGrids(title, value),
        loadingWidget: (bool isReloading) => productLoader(),
      );

  Shimmer productLoader() => Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        enabled: true,
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
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: AspectRatio(
                        aspectRatio: 1.5,
                        child: Container(
                          height: 100,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
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
                    )
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
                style: ThemeProvider.textTheme.headline2,
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                child: ActionText(
                  Localization.value.viewAllCaps,
                  onTap: () {
                    late String condition;
                    if (title == Localization.value.dealOfTheDay) {
                      condition = "deal_of_the_day";
                    } else if (title == Localization.value.topProducts) {
                      condition = "top_products";
                    } else if (title == Localization.value.onSale) {
                      condition = "on_sale";
                    }
                    NavigationHandler.navigateTo<void>(
                      AllProductListScreenRoute(productCondition: condition),
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
              products.length > 6 ? 6 : products.length,
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
          NavigationHandler.navigateTo<void>(
            ProductDetailPageRoute(
              product: productModel,
            ),
          );
        },
        actualPrice: productModel.actualPrice,
        currentPrice: productModel.currentPrice,
        quantityPerUnit: productModel.quantityPerUnit,
        unit: productModel.unit,
      );
}

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intro/src/home/bloc/dashboard_cubit.dart';
import 'package:intro/src/home/state/dashboard_state.dart';
import 'package:navigation/navigation.dart';
import 'package:network/network.dart';
import 'package:widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  Future<void> fetchProductData(DashboardCubit viewModel) async {
    viewModel.fetchProductData(ProductData.dealOfTheDay);
    viewModel.fetchProductData(ProductData.onSale);
    viewModel.fetchProductData(ProductData.topProducts);
  }

  @override
  Widget build(BuildContext context) {
    return StateBuilder<DashboardCubit, DashboardState>(
      onViewModelReady: (viewModel) {
        fetchProductData(viewModel);
      },
      builder: (context, viewModel, state) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            StringsConstants.products,
            style: AppTextStyles.t3,
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              NavigationHandler.navigateTo(AllProductListScreenRoute());
            },
            label: Text(
              StringsConstants.viewAllProducts,
              style: AppTextStyles.t15,
            )),
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
                    state.dealOfTheDay, StringsConstants.dealOfTheDay),
                productDataBuilder(state.onSale, StringsConstants.onSale),
                productDataBuilder(
                    state.topProducts, StringsConstants.topProducts),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget productDataBuilder(
      ResultState<List<ProductModel>> resultState, String title) {
    return ResultStateBuilder(
      state: resultState,
      errorWidget: (String error) => Column(
        children: <Widget>[
          Center(child: Text(error)),
        ],
      ),
      dataWidget: (List<ProductModel> value) {
        return productsGrids(title, value);
      },
      loadingWidget: (bool isReloading) => productLoader(),
    );
  }

  Shimmer productLoader() {
    return Shimmer.fromColors(
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
            (index) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.white,
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
              );
            },
          ),
        ),
      ),
    );
  }

  Widget productsGrids(String title, List<ProductModel> products) {
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
                style: AppTextStyles.t27,
              ),
              Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: ActionText(
                    StringsConstants.viewAllCaps,
                    onTap: () {
                      late String condition;
                      if (title == StringsConstants.dealOfTheDay) {
                        condition = "deal_of_the_day";
                      } else if (title == StringsConstants.topProducts) {
                        condition = "top_products";
                      } else if (title == StringsConstants.onSale) {
                        condition = "on_sale";
                      }
                      NavigationHandler.navigateTo(AllProductListScreenRoute(
                          productCondition: condition));
                    },
                  ))
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

  ProductCardArgs productModelToArgs(ProductModel productModel) {
    return ProductCardArgs(
      image: productModel.image!,
      name: productModel.name!,
      currency: productModel.currency!,
      onTap: () {
        NavigationHandler.navigateTo(
          ProductDetailPageRoute(
            productModel: productModel,
          ),
        );
      },
      actualPrice: productModel.actualPrice!,
      currentPrice: productModel.currentPrice!,
      quantityPerUnit: productModel.quantityPerUnit!,
      unit: productModel.unit!,
    );
  }
}

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intro/src/home/bloc/product_search_cubit.dart';
import 'package:intro/src/home/state/product_search_state.dart';
import 'package:navigation/navigation.dart';
import 'package:network/network.dart';
import 'package:widgets/widgets.dart';

class SearchItemScreen extends StatefulWidget {
  const SearchItemScreen({Key? key}) : super(key: key);

  @override
  _SearchItemScreenState createState() => _SearchItemScreenState();
}

class _SearchItemScreenState extends State<SearchItemScreen> {
  ProductSearchCubit productSearchCubit = DI.container<ProductSearchCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonSearchBar(
          hintText: StringsConstants.searchItems,
          onTextChanged: (String value) {
            productSearchCubit.searchProduct(value);
          },
        ),
        body: BlocBuilder<ProductSearchCubit, ProductSearchState>(
          bloc: productSearchCubit,
          builder: (BuildContext context, ProductSearchState state) {
            if (state.loading) {
              return const Center(
                child: CommonAppLoader(),
              );
            } else {
              return productView(state.productList);
            }
          },
        ));
  }

  Widget productView(List<ProductModel> productList) {
    return GridView.count(
      padding: const EdgeInsets.only(bottom: 10, right: 16, left: 16, top: 20),
      crossAxisCount: 3,
      shrinkWrap: true,
      mainAxisSpacing: 10,
      childAspectRatio: 0.7,
      crossAxisSpacing: 10,
      children: List.generate(
        productList.length,
        (index) => ProductCard(productModelToArgs(productList[index])),
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

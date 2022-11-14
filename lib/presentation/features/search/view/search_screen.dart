import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/core/localization/localization.dart';

import '../../../../di/di.dart';
import '../../../../domain/models/product_model.dart';
import '../../../res/string_constants.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../../../widgets/commom_search_text_field.dart';
import '../../../widgets/common_app_loader.dart';
import '../../../widgets/product_card.dart';
import '../state/product_search_state.dart';
import '../view_model/product_search_viewmodel.dart';

class SearchItemScreen extends StatefulWidget {
  const SearchItemScreen({Key? key}) : super(key: key);

  @override
  State createState() => _SearchItemScreenState();
}

class _SearchItemScreenState extends State<SearchItemScreen> {
  ProductSearchViewModel productSearchCubit = inject<ProductSearchViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonSearchBar(
          hintText: Localization.value.searchItems,
          onTextChanged: (String value) {
            productSearchCubit.searchProduct(value);
          },
        ),
        body: BlocBuilder<ProductSearchViewModel, ProductSearchState>(
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

  Widget productView(List<Product> productList) {
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

  ProductCardArgs productModelToArgs(Product productModel) {
    return ProductCardArgs(
      image: productModel.image,
      name: productModel.name,
      currency: productModel.currency,
      onTap: () {
        NavigationHandler.navigateTo(
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
}

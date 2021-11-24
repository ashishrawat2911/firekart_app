import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/common/models/product_model.dart';
import 'package:fluttercommerce/features/common/widgets/commom_search_text_field.dart';
import 'package:fluttercommerce/features/common/widgets/common_app_loader.dart';
import 'package:fluttercommerce/features/common/widgets/product_card.dart';
import 'package:fluttercommerce/features/search/bloc/product_search_cubit.dart';
import 'package:fluttercommerce/features/search/state/product_search_state.dart';
import 'package:fluttercommerce/res/string_constants.dart';
import 'package:fluttercommerce/di/di.dart';

class SearchItemScreen extends StatefulWidget {
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
          cubit: productSearchCubit,
          builder: (BuildContext context, ProductSearchState state) {
            return state.when(idle: () {
              return Container();
            }, error: () {
              return Container();
            }, loading: () {
              return Center(
                child: CommonAppLoader(),
              );
            }, productList: (List<ProductModel> productList) {
              return productView(productList);
            });
          },
        ));
  }

  Widget productView(List<ProductModel> productList) {
    return GridView.count(
      padding: EdgeInsets.only(bottom: 10, right: 16, left: 16, top: 20),
      crossAxisCount: 3,
      shrinkWrap: true,
      mainAxisSpacing: 10,
      childAspectRatio: 0.7,
      crossAxisSpacing: 10,
      children: List.generate(
        productList.length,
        (index) => ProductCard(productList[index]),
      ),
    );
  }
}

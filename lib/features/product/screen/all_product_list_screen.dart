import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/app/navigation/navigation_handler.dart';
import 'package:fluttercommerce/features/app/navigation/app_router.gr.dart';
import 'package:fluttercommerce/features/common/models/product_model.dart';
import 'package:fluttercommerce/features/common/state/result_state.dart';
import 'package:fluttercommerce/features/common/widgets/common_app_loader.dart';
import 'package:fluttercommerce/features/common/widgets/product_card.dart';
import 'package:fluttercommerce/features/common/widgets/result_api_builder.dart';
import 'package:fluttercommerce/features/product/bloc/all_product_cubit.dart';

class AllProductListScreen extends StatefulWidget {
  final String? productCondition;

  AllProductListScreen({this.productCondition});

  @override
  _AllProductListScreenState createState() => _AllProductListScreenState();
}

class _AllProductListScreenState extends State<AllProductListScreen> {
  var allProductsCubit = DI.container<AllProductCubit>();
  ScrollController controller = ScrollController();

  @override
  void initState() {
    allProductsCubit.fetchProducts(widget.productCondition);
    if (widget.productCondition == null) {
      controller.addListener(_scrollListener);
    }
    super.initState();
  }

  void _scrollListener() {
    if (controller.offset >= controller.position.maxScrollExtent &&
        !controller.position.outOfRange) {
      print("at the end of list");
      allProductsCubit.fetchNextList(widget.productCondition);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsConstants.allProducts),
        actions: <Widget>[
          InkWell(
            onTap: () {
              NavigationHandler.navigateTo( SearchItemScreenRoute.name);
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.search),
            ),
          )
        ],
      ),
      body: BlocConsumer<AllProductCubit, ResultState<List<ProductModel>>>(
        bloc: allProductsCubit,
        listener:
            (BuildContext context, ResultState<List<ProductModel>> state) {},
        builder: (BuildContext context, ResultState<List<ProductModel>> state) {
          return ResultStateBuilder(
            state: state,
            loadingWidget: (bool isReloading) {
              return Center(
                child: CommonAppLoader(),
              );
            },
            errorWidget: (String error) {
              return Container();
            },
            dataWidget: (List<ProductModel> value) {
              return dataWidget(value);
            },
          );
        },
      ),
    );
  }

  Widget dataWidget(List<ProductModel> productList) {
    return GridView.builder(
      controller: controller,
      itemCount: productList.length,
      padding: EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 30),
      itemBuilder: (BuildContext context, int index) {
        return ProductCard(productList[index]);
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
      ),
    );
  }
}

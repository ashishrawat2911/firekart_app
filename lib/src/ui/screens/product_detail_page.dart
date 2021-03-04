import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/bloc/add_to_cart/add_to_cart_cubit.dart';
import 'package:fluttercommerce/src/bloc/add_to_cart/add_to_cart_state.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/product_model.dart';
import 'package:fluttercommerce/src/res/app_colors.dart';
import 'package:fluttercommerce/src/res/string_constants.dart';
import 'package:fluttercommerce/src/res/text_styles.dart';
import 'package:fluttercommerce/src/ui/common/common_app_loader.dart';
import 'package:fluttercommerce/src/ui/common/common_view_cart_overlay.dart';
import 'package:fluttercommerce/src/ui/screens/base_screen_mixin.dart';

class ProductDetailPage extends StatefulWidget {
  final ProductModel productModel;

  ProductDetailPage(this.productModel);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage>
    with BaseScreenMixin {
  var addToCartCubit = AppInjector.get<AddToCartCubit>();

  @override
  void initState() {
    super.initState();
    addToCartCubit!.checkItemInCart(widget.productModel!.productId!);
    addToCartCubit!.listenToProduct(widget.productModel!.productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: CommonViewCartOverlay(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text(widget.productModel.name!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: widget.productModel.image!,
              fit: BoxFit.fill,
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.productModel.name!,
                    style: AppTextStyles.medium22Black,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(widget.productModel.description!),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "${widget.productModel.currency}${widget.productModel.currentPrice} / ${widget.productModel.quantityPerUnit} ${widget.productModel.unit}",
                        style: AppTextStyles.medium16Black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      BlocConsumer<AddToCartCubit, AddToCartState>(
                        cubit: addToCartCubit!,
                        builder: (BuildContext context, AddToCartState state) {
                          return addCartView(state);
                        },
                        listener: (BuildContext context, AddToCartState state) {
                          if (state is AddToCartError) {
                            showSnackBar(title: state.errorMessage);
                          }
                          if (state is DeleteCartError) {
                            showSnackBar(title: state.errorMessage);
                          }
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget addCartView(AddToCartState state) {
    int cartValue = 0;
    if (state is ShowCartValue) {
      cartValue = state.noOfItems as int;
    }
    return AnimatedCrossFade(
        firstChild: addButton(state),
        secondChild: SizedBox(
          height: 30,
          width: 110,
          child: Row(
            children: [
              changeCartValues(
                  false,
                  state is CartDataLoading
                      ? null
                      : () {
                          addToCartCubit!.updateCartValues(
                              widget.productModel, cartValue, false);
                        }),
              Expanded(
                  child: state is CartDataLoading
                      ? Center(
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
                  state is CartDataLoading
                      ? null
                      : () {
                          addToCartCubit!.updateCartValues(
                              widget.productModel, cartValue, true);
                        })
            ],
          ),
        ),
        crossFadeState: (state is ShowCartValue ||
                state is CartDataLoading ||
                state is UpdateCartError ||
                state is DeleteCartError)
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
        duration: Duration(milliseconds: 100));
  }

  Widget addButton(AddToCartState state) {
    return AnimatedCrossFade(
      firstChild: InkWell(
        onTap: () {
          addToCartCubit!.addToCart(widget.productModel);
        },
        child: Container(
          height: 30,
          width: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.colorC4C4C4)),
          child: Text(
            StringsConstants.add,
            style: AppTextStyles.normal12PrimaryColor,
          ),
        ),
      ),
      secondChild: SizedBox(
          height: 30,
          width: 110,
          child: Center(
              child: CommonAppLoader(
            size: 20,
            strokeWidth: 3,
          ))),
      crossFadeState: state is AddToCardLoading
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: Duration(milliseconds: 100),
    );
  }

  Widget changeCartValues(bool isAdd, VoidCallback? onTap) => GestureDetector(
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

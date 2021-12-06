import 'package:flutter/material.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/app/res/text_styles.dart';
import 'package:fluttercommerce/core/state_manager/state_view_manager.dart';
import 'package:fluttercommerce/features/cart/bloc/cart_cubit.dart';
import 'package:fluttercommerce/features/cart/state/cart_state.dart';
import 'package:fluttercommerce/features/common/widgets/action_text.dart';
import 'package:fluttercommerce/features/common/widgets/cart_item_card.dart';
import 'package:fluttercommerce/features/common/widgets/common_button.dart';
import 'package:fluttercommerce/features/common/widgets/common_card.dart';

class CartScreen extends StateManagerWidget<CartCubit, CartState> {
  const CartScreen({Key? key}) : super(key: key);

  @override
  void initState(viewModel) {
    super.initState(viewModel);
    viewModel.init();
  }

  @override
  Widget buildView(BuildContext context, viewModel, state) {
    return Scaffold(
      backgroundColor: AppColors.colorF8F8F8,
      appBar: AppBar(
        title: const Text(StringsConstants.cart),
        elevation: 1,
      ),
      body: state.cartList.noOfItemsInCart > 0
          ? cartView(state, viewModel)
          : Container(),
      bottomNavigationBar: Visibility(
          visible: state.cartList.noOfItemsInCart > 0,
          child: checkOut(state, viewModel)),
    );
  }

  Widget cartView(CartState state, CartCubit viewModel) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(right: 10, left: 10, top: 21),
          child: Column(
            children: [
              Container(
                //  margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  children:
                      List<Widget>.generate(state.cartList.length, (index) {
                    return CartItemCard(
                      cartModel: state.cartList[index],
                      index: index,
                      cartDataLoading: state.cartItemDataLoading,
                      onDecrement: (value) {
                        viewModel.updateCartValues(index, true);
                      },
                      onDeleted: (value) {
                        viewModel.deleteItem(index);
                      },
                      onIncrement: (value) {
                        viewModel.updateCartValues(index, true);
                      },
                      margin: EdgeInsets.only(bottom: 20),
                    );
                  }),
                ),
              ),
              billDetails(state),
              SizedBox(
                height: 20,
              ),
              deliverTo(state, viewModel),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget applyCoupon() {
    return CommonCard(
        child: Container(
      margin: EdgeInsets.only(left: 20, right: 14, top: 17, bottom: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.local_offer,
                color: AppColors.color81819A,
              ),
              SizedBox(
                width: 10,
              ),
              Text(StringsConstants.applyCoupon),
            ],
          ),
          Icon(
            Icons.keyboard_arrow_right,
            color: AppColors.color81819A,
          )
        ],
      ),
    ));
  }

  Widget billDetails(CartState state) {
    Widget priceRow(String title, String price, {bool isFinal = false}) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$title",
                style: TextStyle(
                    color: AppColors.color20203E,
                    fontSize: 14,
                    fontWeight: isFinal ? FontWeight.w500 : null),
              ),
              Text(
                "$price",
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: isFinal ? FontWeight.w500 : null),
              ),
            ],
          ),
          Visibility(
            visible: !isFinal,
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Divider()
              ],
            ),
          )
        ],
      );
    }

    return CommonCard(
        child: Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringsConstants.billDetails,
            style: AppTextStyles.t1,
          ),
          SizedBox(
            height: 20,
          ),
//          priceRow(
//              StringsConstants.basketTotal,
//              "${cartItemStatus.currency}${cartItemStatus.priceInCart}"),
//          priceRow(
//              StringsConstants.taxAndCharges, "${cartItemStatus.currency}900"),
          priceRow(StringsConstants.toPay,
              "${state.cartList.currency}${state.cartList.priceInCart}",
              isFinal: true),
        ],
      ),
    ));
  }

  Widget deliverTo(CartState state, CartCubit viewModel) {
    return CommonCard(
        child: Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringsConstants.deliverTo,
                style: AppTextStyles.t1,
              ),
              ActionText(
                state.selectedAddress == null
                    ? StringsConstants.addNewCaps
                    : StringsConstants.changeTextCapital,
                onTap: () {
                  viewModel.selectOrChangeAddress();
                },
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            state.selectedAddress?.wholeAddress() ??
                StringsConstants.noAddressFound,
            style: AppTextStyles.t12,
          ),
        ],
      ),
    ));
  }

  Widget checkOut(CartState state, CartCubit viewModel) {
    return Container(
      height: 94,
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${state.cartList.currency} ${state.cartList.priceInCart}",
                      style: AppTextStyles.t4,
                    ),
                    ActionText(StringsConstants.viewDetailedBillCaps)
                  ],
                ),
              ),
            ),
          ),
          CommonButton(
            title: StringsConstants.makePayment,
            width: 190,
            height: 50,
            replaceWithIndicator: state.orderInProgress,
            margin: const EdgeInsets.only(right: 20),
            onTap: viewModel.placeOrder,
          )
        ],
      ),
    );
  }
}

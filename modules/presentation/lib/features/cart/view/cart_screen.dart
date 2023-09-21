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
import 'package:core/state_manager/base_view.dart';

import 'package:flutter/material.dart';
import 'package:assets/res/app_theme.dart';

import 'package:assets/res/colors.gen.dart';
import '../../../widgets/action_text.dart';
import '../../../widgets/cart_item_card.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/common_card.dart';
import '../state/cart_state.dart';
import '../view_model/cart_view_model.dart';

@RoutePage()
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<CartViewModel, CartState>(
      onViewModelReady: (viewModel) {
        viewModel.init();
      },
      builder: (context, viewModel, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(Localization.value.cart),
            elevation: 1,
          ),
          body: state.cartList.noOfItemsInCart > 0
              ? cartView(state, viewModel)
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.shopping_cart, size: 100),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        Localization.value.noItemsInCart,
                      ),
                    ],
                  ),
                ),
          bottomNavigationBar: Visibility(
            visible: state.cartList.noOfItemsInCart > 0,
            child: checkOut(state, viewModel),
          ),
        );
      },
    );
  }

  Widget cartView(CartState state, CartViewModel viewModel) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(right: 10, left: 10, top: 21),
          child: Column(
            children: [
              Column(
                children: List<Widget>.generate(state.cartList.length, (index) {
                  var cartModel = state.cartList[index];
                  return CartItemCard(
                    cartItemCardArgs: CartItemCardArgs(
                      name: cartModel.name,
                      image: cartModel.image,
                      itemCount: cartModel.numOfItems,
                      price: '${cartModel.currency}${cartModel.currentPrice}',
                      quantity:
                          '${cartModel.quantityPerUnit} ${cartModel.unit}',
                      totalPrice:
                          '${cartModel.currency}${cartModel.currentPrice * cartModel.numOfItems}',
                      index: index,
                      deleteLoading: state.cartItemDataLoading.deleteLoading,
                      isLoading: state.cartItemDataLoading.index == index &&
                          state.cartItemDataLoading.isLoading,
                      onDecrement: (value) {
                        viewModel.updateCartValues(index, false);
                      },
                      onDeleted: (value) {
                        viewModel.deleteItem(index);
                      },
                      onIncrement: (value) {
                        viewModel.updateCartValues(index, true);
                      },
                      margin: const EdgeInsets.only(bottom: 20),
                    ),
                  );
                }),
              ),
              billDetails(
                state,
              ),
              const SizedBox(
                height: 20,
              ),
              deliverTo(state, viewModel),
              const SizedBox(
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
        margin: const EdgeInsets.only(left: 20, right: 14, top: 17, bottom: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.local_offer,
                  color: AppColors.color4C4C6F,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(Localization.value.applyCoupon),
              ],
            ),
            const Icon(
              Icons.keyboard_arrow_right,
              color: AppColors.color4C4C6F,
            ),
          ],
        ),
      ),
    );
  }

  Widget billDetails(CartState state) {
    Widget priceRow(String title, String price, {bool isFinal = false}) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontSize: 14,
                  fontWeight: isFinal ? FontWeight.w500 : null,
                ),
              ),
              Text(
                price,
                style: context.textTheme.titleSmall?.copyWith(
                  fontSize: 16,
                  fontWeight: isFinal ? FontWeight.w500 : null,
                ),
              ),
            ],
          ),
          Visibility(
            visible: !isFinal,
            child: const Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Divider(),
              ],
            ),
          ),
        ],
      );
    }

    return CommonCard(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Localization.value.billDetails,
              style: context.textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 20,
            ),
//          priceRow(
//              Localization.value.basketTotal,
//              "${cartItemStatus.currency}${cartItemStatus.priceInCart}"),
//          priceRow(
//              Localization.value.taxAndCharges, "${cartItemStatus.currency}900"),
            priceRow(
              Localization.value.toPay,
              '${state.cartList.currency}${state.cartList.priceInCart}',
              isFinal: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget deliverTo(CartState state, CartViewModel viewModel) {
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
                  Localization.value.deliverTo,
                  style: context.textTheme.bodyLarge,
                ),
                ActionText(
                  state.selectedAddress == null
                      ? Localization.value.addNewCaps
                      : Localization.value.changeTextCapital,
                  onTap: () {
                    viewModel.selectOrChangeAddress();
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              state.selectedAddress?.wholeAddress() ??
                  Localization.value.noAddressFound,
              style: context.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget checkOut(CartState state, CartViewModel viewModel) {
    return SizedBox(
      height: 94,
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
                      '${state.cartList.currency} ${state.cartList.priceInCart}',
                      style: context.textTheme.bodyLarge,
                    ),
                    ActionText(Localization.value.viewDetailedBillCaps),
                  ],
                ),
              ),
            ),
          ),
          CommonButton(
            title: Localization.value.makePayment,
            width: 190,
            height: 50,
            replaceWithIndicator: state.orderInProgress,
            margin: const EdgeInsets.only(right: 20),
            onTap: viewModel.placeOrder,
          ),
        ],
      ),
    );
  }
}

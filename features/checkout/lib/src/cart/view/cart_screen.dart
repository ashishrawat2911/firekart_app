import 'package:checkout/src/cart/state/cart_state.dart';
import 'package:checkout/src/cart/view_model/cart_view_model.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateBuilder<CartViewModel, CartState>(
      onViewModelReady: (viewModel) {
        viewModel.init();
      },
      builder: (context, viewModel, state) {
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
                          "${cartModel.currency}${cartModel.currentPrice * cartModel.numOfItems}",
                      index: index,
                      deleteLoading: state.cartItemDataLoading.deleteLoading,
                      isLoading: state.cartItemDataLoading.isLoading,
                      onDecrement: (value) {
                        viewModel.updateCartValues(index, true);
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
              billDetails(state),
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
              Icon(
                Icons.local_offer,
                color: AppColors.color81819A,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(StringsConstants.applyCoupon),
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
                title,
                style: TextStyle(
                    color: AppColors.color20203E,
                    fontSize: 14,
                    fontWeight: isFinal ? FontWeight.w500 : null),
              ),
              Text(
                price,
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
              children: const [
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
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringsConstants.billDetails,
            style: AppTextStyles.t1,
          ),
          const SizedBox(
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

  Widget checkOut(CartState state, CartViewModel viewModel) {
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
                    const ActionText(StringsConstants.viewDetailedBillCaps)
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

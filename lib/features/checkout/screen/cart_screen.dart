import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/checkout/bloc/cart_status_bloc.dart';
import 'package:fluttercommerce/features/checkout/bloc/payment_cubit.dart';
import 'package:fluttercommerce/features/checkout/bloc/place_order_cubit.dart';
import 'package:fluttercommerce/features/checkout/state/payment_state.dart';
import 'package:fluttercommerce/features/checkout/state/place_order_state.dart';
import 'package:fluttercommerce/features/common/base_screen_mixin.dart';
import 'package:fluttercommerce/features/common/models/cartModel_model.dart';
import 'package:fluttercommerce/features/common/widgets/action_text.dart';
import 'package:fluttercommerce/features/common/widgets/cart_item_card.dart';
import 'package:fluttercommerce/features/common/widgets/common_button.dart';
import 'package:fluttercommerce/features/common/widgets/common_card.dart';
import 'package:fluttercommerce/features/order/bloc/account_details_cubit.dart';
import 'package:fluttercommerce/features/order/state/account_details_state.dart';
import 'package:fluttercommerce/routes/router.gr.dart';
import 'package:fluttercommerce/res/app_colors.dart';
import 'package:fluttercommerce/res/string_constants.dart';
import 'package:fluttercommerce/res/text_styles.dart';
import 'package:fluttercommerce/di/di.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with BaseScreenMixin {
  var paymentCubit = DI.container<PaymentCubit>();
  var cartStatusCubit = DI.container<CartStatusCubit>();
  var placeOrderCubit = DI.container<PlaceOrderCubit>();
  var selectedAddressCubit = DI.container<AccountDetailsCubit>();
  final AccountDetailsCubit accountDetailsCubit =
      DI.container<AccountDetailsCubit>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartStatusCubit, List<CartModel>>(
      cubit: cartStatusCubit,
      builder: (context, state) {
        print('Cart screen ${state.noOfItemsInCart}');
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: AppColors.colorF8F8F8,
          appBar: AppBar(
            title: const Text(StringsConstants.cart),
            elevation: 1,
          ),
          body: state.noOfItemsInCart > 0 ? cartView(state) : Container(),
          bottomNavigationBar: Visibility(
              visible: state.noOfItemsInCart > 0, child: checkOut(state)),
        );
      },
    );
  }

  Widget cartView(List<CartModel> state) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(right: 10, left: 10, top: 21),
          child: Column(
            children: [
              Container(
                //  margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: List<Widget>.generate(state.length, (index) {
                    return CartItemCard(
                      cartModel: state[index],
                      margin: EdgeInsets.only(bottom: 20),
                    );
                  }),
                ),
              ),
              billDetails(state),
              SizedBox(
                height: 20,
              ),
              deliverTo(),
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

  Widget billDetails(List<CartModel> state) {
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
            style: AppTextStyles.medium14Black,
          ),
          SizedBox(
            height: 20,
          ),
//          priceRow(
//              StringsConstants.basketTotal,
//              "${cartItemStatus.currency}${cartItemStatus.priceInCart}"),
//          priceRow(
//              StringsConstants.taxAndCharges, "${cartItemStatus.currency}900"),
          priceRow(
              StringsConstants.toPay, "${state.currency}${state.priceInCart}",
              isFinal: true),
        ],
      ),
    ));
  }

  Widget deliverTo() {
    return BlocBuilder<AccountDetailsCubit, AccountDetailsState>(
      cubit: selectedAddressCubit,
      builder: (BuildContext context, AccountDetailsState accountDetailState) {
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
                    style: AppTextStyles.medium14Black,
                  ),
                  ActionText(
                    accountDetailState.selectedAddress == null
                        ? StringsConstants.addNewCaps
                        : StringsConstants.changeTextCapital,
                    onTap: () {
                      if (accountDetailState.selectedAddress == null) {
                        Navigator.pushNamed(context, Routes.addAddressScreen,
                            arguments: AddAddressScreenArguments(
                              newAddress: true,
                              accountDetails: accountDetailState.accountDetails,
                            ));
                      } else {
                        Navigator.of(context).pushNamed(Routes.myAddressScreen,
                            arguments: MyAddressScreenArguments(
                                selectedAddress: true));
                      }
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                accountDetailState.selectedAddress?.wholeAddress() ??
                    StringsConstants.noAddressFound,
                style: AppTextStyles.medium12Color81819A,
              ),
            ],
          ),
        ));
      },
    );
  }

  Widget checkOut(List<CartModel> state) {
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
                      "${state.currency} ${state.priceInCart}",
                      style: AppTextStyles.medium15Black,
                    ),
                    ActionText(StringsConstants.viewDetailedBillCaps)
                  ],
                ),
              ),
            ),
          ),
          BlocBuilder<AccountDetailsCubit, AccountDetailsState>(
            cubit: accountDetailsCubit,
            builder: (context, accountDetailsState) {
              return BlocConsumer<PaymentCubit, PaymentState>(
                cubit: paymentCubit,
                listener: (BuildContext context, PaymentState paymentState) {
                  if (paymentState is PaymentSuccessful) {
                    placeOrderCubit.placeOrder(
                      state,
                      paymentState.response,
                      accountDetailsState.selectedAddress,
                    );
                  }
                },
                builder: (BuildContext context, PaymentState paymentState) {
                  return BlocBuilder<AccountDetailsCubit, AccountDetailsState>(
                    cubit: accountDetailsCubit,
                    builder: (BuildContext context,
                        AccountDetailsState accountDetailsState) {
                      return BlocConsumer<PlaceOrderCubit, PlaceOrderState>(
                        cubit: placeOrderCubit,
                        listener:
                            (BuildContext context, PlaceOrderState state) {
                          state.when(
                              orderPlacedInProgress: () {},
                              idle: () {},
                              orderNotPlaced: (String message) {},
                              orderSuccessfullyPlaced: () {
                                if (Navigator.canPop(context)) {
                                  Navigator.of(context).pushReplacementNamed(
                                      Routes.myOrdersScreen);
                                }
                              });
                        },
                        builder: (BuildContext context,
                            PlaceOrderState placeOrderState) {
                          return CommonButton(
                            title: StringsConstants.makePayment,
                            width: 190,
                            height: 50,
                            replaceWithIndicator:
                                placeOrderState is OrderPlacedInProgress ||
                                    paymentState is PaymentButtonLoading,
                            margin: const EdgeInsets.only(right: 20),
                            onTap: () {
                              if (accountDetailsState.selectedAddress != null) {
                                paymentCubit.openCheckout(state.priceInCart);
                              } else {
                                showSnackBar(
                                    title: StringsConstants.noAddressSelected);
                              }
                            },
                          );
                        },
                      );
                    },
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}

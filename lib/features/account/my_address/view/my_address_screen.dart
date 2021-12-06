import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/account/bloc/address_card_cubit.dart';
import 'package:fluttercommerce/features/account/my_address/view_model/my_address_view_model.dart';
import 'package:fluttercommerce/features/account/state/address_card_state.dart';
import 'package:fluttercommerce/features/account/state/my_address_state.dart';
import 'package:fluttercommerce/features/app/navigation/app_router.gr.dart';
import 'package:fluttercommerce/features/app/navigation/navigation_handler.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/app/res/text_styles.dart';
import 'package:fluttercommerce/features/app/view/base_screen.dart';
import 'package:fluttercommerce/features/common/models/account_details_model.dart';
import 'package:fluttercommerce/features/common/widgets/action_text.dart';
import 'package:fluttercommerce/features/common/widgets/common_app_loader.dart';

class MyAddressScreen extends BaseScreen<MyAddressViewModel, MyAddressState> {
  const MyAddressScreen({Key? key, this.selectedAddress = false})
      : super(key: key);

  final bool selectedAddress;

  @override
  void initState(viewModel) {
    super.initState(viewModel);
    viewModel.fetchAccountDetails();
  }

  @override
  Widget buildView(BuildContext context, viewModel, state) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          title: Text(selectedAddress
              ? StringsConstants.selectAddress
              : StringsConstants.myAddress)),
      body: Builder(
        builder: (BuildContext context) {
          return state.map(showAccountDetails: (ShowAccountDetails value) {
            if (value.accountDetails.addresses.isEmpty) {
              return noAddressesFound(value.accountDetails, viewModel);
            }
            return addressesView(value.accountDetails, viewModel);
          }, loading: (Loading value) {
            return Center(
              child: CommonAppLoader(),
            );
          }, error: (value) {
            return Text(value.errorMessage);
          });
        },
      ),
    );
  }

  Widget addressesView(
      AccountDetails accountDetails, MyAddressViewModel viewModel) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 22,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${accountDetails.addresses.length} ${StringsConstants.savedAddresses}",
                    style: AppTextStyles.medium12Color81819A,
                  ),
                  ActionText(
                    StringsConstants.addNewCaps,
                    onTap: () {
                      addNewNavigation(accountDetails, viewModel);
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            ...List<Widget>.generate(accountDetails.addresses.length,
                (int index) {
              return addressCard(accountDetails, index, viewModel);
            })
          ],
        ),
      ),
    );
  }

  Widget addressCard(
    AccountDetails accountDetails,
    index,
    MyAddressViewModel viewModel,
  ) {
    final AddressCardCubit addressCardCubit = DI.container<AddressCardCubit>();
    final Address address = accountDetails.addresses[index];
    Widget data(IconData iconData, String text) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            iconData,
            color: AppColors.color81819A,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
              child: Text(
            text,
            style: AppTextStyles.normal12Color81819A,
          ))
        ],
      );
    }

    return BlocConsumer<AddressCardCubit, AddressCardState>(
      bloc: addressCardCubit,
      listener: (context, state) {
        state.maybeWhen(
          successful: () {
            viewModel.fetchAccountDetails();
          },
          orElse: () {},
        );
      },
      builder: (BuildContext context, AddressCardState state) {
        return Container(
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
            child: InkWell(
              onTap: selectedAddress
                  ? () {
                      NavigationHandler.pop(accountDetails.addresses[index]);
                    }
                  : null,
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Text(
                            address.name,
                            style: AppTextStyles.medium14Black,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            height: 20,
                            width: address.isDefault ? null : 0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.color6EBA49,
                                borderRadius: BorderRadius.circular(4)),
                            child: Text(
                              StringsConstants.defaultCaps,
                              style: AppTextStyles.medium14White,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      data(Icons.phone, address.phoneNumber),
                      const SizedBox(
                        height: 23,
                      ),
                      data(Icons.place,
                          "${address.address} ${address.city} ${address.state} ${address.pincode}"),
                      const SizedBox(
                        height: 33,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ActionText(
                                StringsConstants.editCaps,
                                onTap: () {
                                  NavigationHandler.navigateTo(
                                          AddAddressScreenRoute(
                                              newAddress: false,
                                              accountDetails: accountDetails,
                                              editAddress: address))
                                      .then((value) {
                                    if (value != null &&
                                        value is bool &&
                                        value) {
                                      viewModel.fetchAccountDetails();
                                    }
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              if (state is EditLoading)
                                CommonAppLoader(
                                  size: 20,
                                )
                              else
                                ActionText(
                                  StringsConstants.deleteCaps,
                                  onTap: () {
                                    addressCardCubit.deleteAddress(
                                        accountDetails, address);
                                  },
                                ),
                            ],
                          ),
                          Visibility(
                            visible: !address.isDefault,
                            child: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: state is SetDefaultLoading
                                    ? CommonAppLoader(
                                        size: 20,
                                      )
                                    : ActionText(
                                        StringsConstants.setAsDefaultCaps,
                                        onTap: () {
                                          addressCardCubit.setAsDefault(
                                              accountDetails, index);
                                        },
                                      )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }

  Widget noAddressesFound(
      AccountDetails accountDetails, MyAddressViewModel viewModel) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "No Address Found",
            style: AppTextStyles.medium18Black,
          ),
          const SizedBox(
            height: 20,
          ),
          ActionText(
            StringsConstants.addNewCaps,
            onTap: () {
              addNewNavigation(accountDetails, viewModel);
            },
          )
        ],
      ),
    );
  }

  void addNewNavigation(AccountDetails accountDetails, MyAddressViewModel viewModel) {
    NavigationHandler.navigateTo(AddAddressScreenRoute(
            newAddress: true, accountDetails: accountDetails))
        .then((value) {
      if (value != null && value is bool && value) {
        viewModel.fetchAccountDetails();
      }
    });
  }
}

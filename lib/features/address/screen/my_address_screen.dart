import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/features/address/bloc/address_card_cubit.dart';
import 'package:fluttercommerce/features/address/bloc/my_address_cubit.dart';
import 'package:fluttercommerce/features/address/state/address_card_state.dart';
import 'package:fluttercommerce/features/address/state/my_address_state.dart';
import 'package:fluttercommerce/features/common/models/account_details_model.dart';
import 'package:fluttercommerce/features/common/widgets/action_text.dart';
import 'package:fluttercommerce/features/common/widgets/common_app_loader.dart';
import 'package:fluttercommerce/features/order/bloc/account_details_cubit.dart';
import 'package:fluttercommerce/routes/router.gr.dart';
import 'package:fluttercommerce/res/app_colors.dart';
import 'package:fluttercommerce/res/string_constants.dart';
import 'package:fluttercommerce/res/text_styles.dart';

class MyAddressScreen extends StatefulWidget {
  final bool selectedAddress;

  MyAddressScreen({this.selectedAddress = false});

  @override
  _MyAddressScreenState createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
  MyAddressCubit myAddressCubit = DI.container<MyAddressCubit>();
  var accountDetailsCubit = DI.container<AccountDetailsCubit>();

  @override
  void initState() {
    super.initState();
    accountDetailsCubit.listen((state) {
      myAddressCubit.listenToAccountDetails(state.accountDetails);
    });
    myAddressCubit.fetchAccountDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          title: Text(widget.selectedAddress
              ? StringsConstants.selectAddress
              : StringsConstants.myAddress)),
      body: BlocConsumer<MyAddressCubit, MyAddressState>(
        cubit: myAddressCubit,
        listener: (BuildContext context, MyAddressState state) {},
        builder: (BuildContext context, MyAddressState state) {
          return state.map(showAccountDetails: (ShowAccountDetails value) {
            if (value.accountDetails.addresses.isEmpty) {
              return noAddressesFound(value.accountDetails);
            }
            return addressesView(value.accountDetails);
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

  Widget addressesView(AccountDetails accountDetails) {
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
                      addNewNavigation(accountDetails);
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
              return addressCard(accountDetails, index);
            })
          ],
        ),
      ),
    );
  }

  Widget addressCard(AccountDetails accountDetails, index) {
    final AddressCardCubit addressCardCubit =
        DI.container<AddressCardCubit>();
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
      cubit: addressCardCubit,
      listener: (context, state) {
        state.maybeWhen(
          successful: () {
            myAddressCubit.fetchAccountDetails();
          },
          orElse: () {},
        );
      },
      builder: (BuildContext context, AddressCardState state) {
        return Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 30),
            child: InkWell(
              onTap: widget.selectedAddress
                  ? () {
                      final AccountDetailsCubit accountDetailsCubit =
                          DI.container<AccountDetailsCubit>();
                      accountDetailsCubit.selectedAddress =
                          accountDetails.addresses[index];
                      Navigator.of(context).pop();
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
                                  Navigator.pushNamed(
                                          context, Routes.addAddressScreen,
                                          arguments: AddAddressScreenArguments(
                                              newAddress: false,
                                              accountDetails: accountDetails,
                                              editAddress: address))
                                      .then((value) {
                                    if (value != null &&
                                        value is bool &&
                                        value) {
                                      myAddressCubit.fetchAccountDetails();
                                    }
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              state is EditLoading
                                  ? CommonAppLoader(
                                      size: 20,
                                    )
                                  : ActionText(
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

  Widget noAddressesFound(AccountDetails accountDetails) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "No Address Found",
            style: AppTextStyles.medium18Black,
          ),
          SizedBox(
            height: 20,
          ),
          ActionText(
            StringsConstants.addNewCaps,
            onTap: () {
              addNewNavigation(accountDetails);
            },
          )
        ],
      ),
    );
  }

  addNewNavigation(AccountDetails accountDetails) {
    Navigator.pushNamed(context, Routes.addAddressScreen,
            arguments: AddAddressScreenArguments(
                newAddress: true, accountDetails: accountDetails))
        .then((value) {
      if (value != null && value is bool && value) {
        myAddressCubit.fetchAccountDetails();
      }
    });
  }
}

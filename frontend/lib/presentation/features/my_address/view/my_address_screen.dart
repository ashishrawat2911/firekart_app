import 'package:account/src/my_address/state/my_address_state.dart';
import 'package:account/src/my_address/view_model/my_address_view_model.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:network/network.dart';
import 'package:widgets/widgets.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({Key? key, this.selectedAddress = false})
      : super(key: key);

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          title: Text(selectedAddress
              ? StringsConstants.selectAddress
              : StringsConstants.myAddress)),
      body: StateBuilder<MyAddressViewModel, MyAddressState>(
        onViewModelReady: (viewModel) {
          viewModel.fetchAccountDetails();
        },
        // buildWhen: (previous, current) => previous.accountDetails != current.accountDetails,
        builder: (BuildContext context, viewModel, state) {
          if (state.screenLoading) {
            return const Center(
              child: CommonAppLoader(),
            );
          } else if (state.accountDetails != null &&
              state.addressStates.isNotEmpty) {
            return addressesView(state.accountDetails!, viewModel, state);
          } else if (state.addressStates.isEmpty) {
            return noAddressesFound(state.accountDetails!, viewModel);
          } else if (state.screenError != null) {
            return Text(state.screenError!);
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget addressesView(AccountDetails accountDetails,
      MyAddressViewModel viewModel, MyAddressState state) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${accountDetails.addresses.length} ${StringsConstants.savedAddresses}",
                    style: AppTextStyles.t12,
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
              return addressCard(
                state,
                index,
                viewModel,
                state.addressStates[index],
              );
            })
          ],
        ),
      ),
    );
  }

  Widget addressCard(
    MyAddressState addressState,
    index,
    MyAddressViewModel viewModel,
    AddressCardState addressCardState,
  ) {
    // final AddressCardCubit addressCardCubit = DI.container<AddressCardCubit>();
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
            style: AppTextStyles.t14,
          ))
        ],
      );
    }

    return Container(
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
        child: InkWell(
          onTap: selectedAddress
              ? () {
                  NavigationHandler.pop(addressCardState.address);
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
                        addressCardState.address.name,
                        style: AppTextStyles.t1,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        height: 20,
                        width: addressCardState.address.isDefault ? null : 0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.color6EBA49,
                            borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          StringsConstants.defaultCaps,
                          style: AppTextStyles.t15,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  data(Icons.phone, addressCardState.address.phoneNumber),
                  const SizedBox(
                    height: 23,
                  ),
                  data(Icons.place,
                      "${addressCardState.address.address} ${addressCardState.address.city} ${addressCardState.address.state} ${addressCardState.address.pincode}"),
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
                                          accountDetails:
                                              addressState.accountDetails!,
                                          editAddress:
                                              addressCardState.address))
                                  .then((value) {
                                if (value != null && value is bool && value) {
                                  viewModel.fetchAccountDetails();
                                }
                              });
                            },
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          if (addressCardState.editLoading)
                            const CommonAppLoader(
                              size: 20,
                            )
                          else
                            ActionText(
                              StringsConstants.deleteCaps,
                              onTap: () {
                                viewModel.deleteAddress(index);
                              },
                            ),
                        ],
                      ),
                      Visibility(
                        visible: !addressCardState.address.isDefault,
                        child: Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: addressCardState.setDefaultLoading
                                ? const CommonAppLoader(
                                    size: 20,
                                  )
                                : ActionText(
                                    StringsConstants.setAsDefaultCaps,
                                    onTap: () {
                                      viewModel.setAsDefault(index);
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
            style: AppTextStyles.t6,
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

  void addNewNavigation(
      AccountDetails accountDetails, MyAddressViewModel viewModel) {
    NavigationHandler.navigateTo(AddAddressScreenRoute(
            newAddress: true, accountDetails: accountDetails))
        .then((value) {
      if (value != null && value is bool && value) {
        viewModel.fetchAccountDetails();
      }
    });
  }
}

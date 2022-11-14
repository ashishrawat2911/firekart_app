import 'package:flutter/material.dart';
import 'package:fluttercommerce/core/localization/localization.dart';
import 'package:fluttercommerce/core/theme/theme_provider.dart';

import '../../../../core/state_manager/base_view.dart';
import '../../../../domain/models/account_details_model.dart';
import '../../../res/app_colors.dart';
import '../../../res/string_constants.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../../../widgets/action_text.dart';
import '../../../widgets/common_app_loader.dart';
import '../state/my_address_state.dart';
import '../view_model/my_address_view_model.dart';

class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({Key? key, this.selectedAddress = false})
      : super(key: key);

  final bool selectedAddress;

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          title: Text(widget.selectedAddress
              ? Localization.value.selectAddress
              : Localization.value.myAddress)),
      body: BaseView<MyAddressViewModel, MyAddressState>(
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
                    "${accountDetails.addresses.length} ${Localization.value.savedAddresses}",
                    style: ThemeProvider.textTheme.overline,
                  ),
                  ActionText(
                    Localization.value.addNewCaps,
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
    // final AddressCardCubit addressCardCubit = inject<AddressCardCubit>();
    Widget data(IconData iconData, String text) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            iconData,
            color: AppColors.color4C4C6F,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
              child: Text(
            text,
            style: ThemeProvider.textTheme.button,
          ))
        ],
      );
    }

    return Container(
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
        child: InkWell(
          onTap: widget.selectedAddress
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
                        style: ThemeProvider.textTheme.bodyText1,
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
                          Localization.value.defaultCaps,
                          style: ThemeProvider.textTheme.overline?.copyWith(
                                color: AppColors.white,
                              ),
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
                            Localization.value.editCaps,
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
                              Localization.value.deleteCaps,
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
                                    Localization.value.setAsDefaultCaps,
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
            style: ThemeProvider.textTheme.headline3,
          ),
          const SizedBox(
            height: 20,
          ),
          ActionText(
            Localization.value.addNewCaps,
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

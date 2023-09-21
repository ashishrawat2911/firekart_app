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
import 'package:core/state_manager/base_view.dart';

import 'package:domain/models/account_details_model.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:assets/res/app_theme.dart';
import 'package:presentation/routes/app_router.gr.dart';

import 'package:assets/res/colors.gen.dart';
import '../../../routes/route_handler.dart';
import '../../../widgets/action_text.dart';
import '../../../widgets/common_app_loader.dart';
import '../state/my_address_state.dart';
import '../view_model/my_address_view_model.dart';

@RoutePage()
class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({Key? key, this.selectedAddress = false})
      : super(key: key);

  final bool selectedAddress;

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text(
            widget.selectedAddress
                ? Localization.value.selectAddress
                : Localization.value.myAddress,
          ),
        ),
        body: BaseView<MyAddressViewModel, MyAddressState>(
          onViewModelReady: (viewModel) {
            viewModel.fetchAccountDetails();
          },
          // buildWhen: (previous, current) => previous.accountDetails != current.accountDetails,
          builder: (BuildContext context, viewModel, state) {
            final addresses = state.addresses;
            if (addresses.isEmpty) {
              return Container();
            }
            if (state.screenLoading) {
              return const Center(
                child: CommonAppLoader(),
              );
            }
            if (state.addressStates.isNotEmpty) {
              return addressesView(addresses, viewModel, state);
            } else if (state.addressStates.isEmpty) {
              return noAddressesFound(addresses, viewModel);
            } else if (state.screenError != null) {
              return Text(state.screenError!);
            } else {
              return Container();
            }
          },
        ),
      );

  Widget addressesView(
    List<Address> addresses,
    MyAddressViewModel viewModel,
    MyAddressState state,
  ) =>
      SafeArea(
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
                      '${addresses.length} ${Localization.value.savedAddresses}',
                      style: context.textTheme.labelSmall,
                    ),
                    ActionText(
                      Localization.value.addNewCaps,
                      onTap: () {
                        addNewNavigation(viewModel);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              ...List<Widget>.generate(
                addresses.length,
                (int index) => addressCard(
                  state,
                  index,
                  viewModel,
                  state.addressStates[index],
                ),
              ),
            ],
          ),
        ),
      );

  Widget addressCard(
    MyAddressState addressState,
    int index,
    MyAddressViewModel viewModel,
    AddressCardState addressCardState,
  ) {
    // final AddressCardCubit addressCardCubit = inject<AddressCardCubit>();
    Widget data(IconData iconData, String text) => Row(
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
                style: context.textTheme.labelLarge,
              ),
            ),
          ],
        );

    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
      child: InkWell(
        onTap: widget.selectedAddress
            ? () {
                RouteHandler.pop(addressCardState.address);
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
                      style: context.textTheme.bodyLarge,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 20,
                      width: addressCardState.address.isDefault ? null : 0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.color6EBA49,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        Localization.value.defaultCaps,
                        style: context.textTheme.labelSmall?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 33,
                ),
                data(Icons.phone, addressCardState.address.phoneNumber),
                const SizedBox(
                  height: 23,
                ),
                data(
                  Icons.place,
                  '${addressCardState.address.address} ${addressCardState.address.city} ${addressCardState.address.state} ${addressCardState.address.pincode}',
                ),
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
                            RouteHandler.routeTo(
                              AddAddressRoute(
                                newAddress: false,
                                editAddress: addressCardState.address,
                              ),
                            ).then((value) {
                              if (value != null && value) {
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
                              ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget noAddressesFound(
    List<Address> addresses,
    MyAddressViewModel viewModel,
  ) =>
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'No Address Found',
              style: context.textTheme.displaySmall,
            ),
            const SizedBox(
              height: 20,
            ),
            ActionText(
              Localization.value.addNewCaps,
              onTap: () {
                addNewNavigation(viewModel);
              },
            ),
          ],
        ),
      );

  void addNewNavigation(
    MyAddressViewModel viewModel,
  ) {
    RouteHandler.routeTo(
      AddAddressRoute(
        newAddress: true,
      ),
    ).then((value) {
      if (value != null && value) {
        viewModel.fetchAccountDetails();
      }
    });
  }
}

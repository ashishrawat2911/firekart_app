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
import 'package:core/message_handler/message_handler.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:domain/usecases/edit_address_usecase.dart';
import 'package:domain/usecases/get_address_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import 'package:domain/models/account_details_model.dart';
import '../state/my_address_state.dart';

@injectable
class MyAddressViewModel extends ViewModel<MyAddressState> {
  MyAddressViewModel(
    this._getAddressUseCase,
    this._editAddressUseCase,
  ) : super(const MyAddressState());

  final GetAddressUseCase _getAddressUseCase;
  final EditAddressUseCase _editAddressUseCase;

  Future<void> fetchAccountDetails() async {
    state = state.copyWith(screenLoading: true);

    final res = await _getAddressUseCase.execute();

    res.fold((l) {
      MessageHandler.showSnackBar(title: l.errorMessage);
    }, (addresses) {
      final List<AddressCardState> cardStates = [];

      for (int i = 0; i < addresses.length; i++) {
        cardStates.add(
          AddressCardState(address: addresses[i], index: i),
        );
      }
      state = state.copyWith(
        addresses: addresses.reversed.toList(),
        addressStates: cardStates,
        screenLoading: false,
      );
    });
  }

  void deleteAddress(int index) {
    void updateLoading(bool value) {
      final addresses = state.addressStates;
      final address =
          addresses[index].copyWith(index: index, editLoading: value);
      addresses[index] = address;
      state = state.copyWith(addressStates: addresses);
    }

    updateLoading(true);

    state.addresses.remove(state.addressStates[index].address);
    // _saveData(state.accountDetails!);
    state = state;

    updateLoading(false);
  }

  Future<void> setAsDefault(int index) async {
    void updateLoading(bool value) {
      // final addresses = state.addressStates;
      // final address =
      //     addresses[index].copyWith(index: index, setDefaultLoading: value);
      // addresses[index] = address;
      // state = state.copyWith(addressStates: addresses);
    }

    updateLoading(true);
    final addresses = state.addressStates;
    final address = addresses[index];
    final res = await _editAddressUseCase
        .execute(EditAddress(id: address.address.id, isDefault: true));
    res.fold((l) {
      MessageHandler.showSnackBar(title: l.errorMessage);
    }, (d) {
      fetchAccountDetails();
    });
  }

//TODO
// void _saveData(AccountDetails accountDetails) {
//   _setAccountDetailsUseCase.execute(accountDetails).then((value) {
//     fetchAccountDetails();
//   }).catchError((e) {
//     MessageHandler.showSnackBar(title: e.toString());
//   });
// }
}

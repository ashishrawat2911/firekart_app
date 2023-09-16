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
import 'package:domain/models/account_details_model.dart';
import 'package:domain/usecases/edit_address_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';
import 'package:domain/usecases/add_address_usecase.dart';

import '../../../routes/route_handler.dart';
import '../state/add_address_state.dart';

@injectable
class AddAddressViewModel extends ViewModel<AddAddressState> {
  AddAddressViewModel(
    this._addAddressUseCase,
    this._editAddressUseCase,
  ) : super(const AddAddressState());

  final AddAddressUseCase _addAddressUseCase;
  final EditAddressUseCase _editAddressUseCase;

  Future<void> saveAddress(
    AddAddress address,
  ) async {
    state = state.copyWith(buttonLoading: true);

    await _addAddressUseCase
        .execute(address)
        .then((res) {
          res.fold((l) {
            MessageHandler.showSnackBar(title: l.errorMessage);
          }, (r) {
            RouteHandler.pop(true);
          });
        })
        .catchError((e) {})
        .whenComplete(() {
          state = state.copyWith(buttonLoading: false);
        });
  }

  void setDefault(bool isDefault) {
    state = state.copyWith(setAsDefault: isDefault);
  }

  Future<void> editAddress(EditAddress address) async {
    state = state.copyWith(buttonLoading: true);

    await _editAddressUseCase
        .execute(address)
        .then((res) {
          res.fold((l) {
            MessageHandler.showSnackBar(title: l.errorMessage);
          }, (r) {
            RouteHandler.pop(true);
          });
        })
        .catchError((e) {})
        .whenComplete(() {
          state = state.copyWith(buttonLoading: false);
        });
  }

  (String, String)? extractCountryCodeAndNumber(String phoneNumber) {
    RegExp regex =
        RegExp(r'^\+(\d{2})(\d+)'); // Matches the first 2 digits and the rest
    Match? match = regex.firstMatch(phoneNumber);
    if (match != null) {
      String countryCode = match.group(1)!;
      String number = match.group(2)!;
      return (countryCode, number);
    }
    return null;
  }
}

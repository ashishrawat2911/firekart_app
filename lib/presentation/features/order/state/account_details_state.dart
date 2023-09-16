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
import 'package:domain/models/account_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_details_state.freezed.dart';

@freezed
abstract class AccountDetailsState with _$AccountDetailsState {
  factory AccountDetailsState({
    AccountDetails? accountDetails,
    Address? selectedAddress,
  }) = _AccountDetailsState;
}

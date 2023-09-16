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

part 'add_account_details_state.freezed.dart';

@freezed
class AddAccountDetailsState with _$AddAccountDetailsState {
  const factory AddAccountDetailsState.idle() = Idle;

  const factory AddAccountDetailsState.editData(AccountDetails accountDetails) =
      EditData;

  const factory AddAccountDetailsState.loading() = Loading;

  const factory AddAccountDetailsState.onButtonEnabled() = ButtonEnabled;

  const factory AddAccountDetailsState.onButtonDisabled() = ButtonDisabled;

  const factory AddAccountDetailsState.saveDataLoading() = SaveDataLoading;

  const factory AddAccountDetailsState.successful() = Successful;
}

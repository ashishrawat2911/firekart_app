import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/account_details_model.dart';

part 'add_account_details_state.freezed.dart';

@freezed
abstract class AddAccountDetailsState with _$AddAccountDetailsState {
  const factory AddAccountDetailsState.idle() = Idle;

  const factory AddAccountDetailsState.editData(AccountDetailsModel accountDetails) = EditData;

  const factory AddAccountDetailsState.loading() = Loading;

  const factory AddAccountDetailsState.onButtonEnabled() = ButtonEnabled;

  const factory AddAccountDetailsState.onButtonDisabled() = ButtonDisabled;

  const factory AddAccountDetailsState.saveDataLoading() = SaveDataLoading;

  const factory AddAccountDetailsState.successful() = Successful;
}

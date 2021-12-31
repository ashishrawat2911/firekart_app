import 'package:core/core.dart';
import 'package:network/network.dart';

part 'add_account_details_state.freezed.dart';

@freezed
abstract class AddAccountDetailsState with _$AddAccountDetailsState {
  const factory AddAccountDetailsState.idle() = Idle;

  const factory AddAccountDetailsState.editData(AccountDetails accountDetails) =
      EditData;

  const factory AddAccountDetailsState.loading() = Loading;

  const factory AddAccountDetailsState.onButtonEnabled() = ButtonEnabled;

  const factory AddAccountDetailsState.onButtonDisabled() = ButtonDisabled;

  const factory AddAccountDetailsState.saveDataLoading() = SaveDataLoading;

  const factory AddAccountDetailsState.successful() = Successful;
}

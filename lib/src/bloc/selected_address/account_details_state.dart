import 'package:fluttercommerce/src/models/account_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_details_state.freezed.dart';

@freezed
abstract class AccountDetailsState with _$AccountDetailsState {
  factory AccountDetailsState(
      {AccountDetails accountDetails,
      Address selectedAddress}) = _AccountDetailsState;
}

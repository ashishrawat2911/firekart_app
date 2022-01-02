import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/network.dart';

part 'account_details_state.freezed.dart';

@freezed
abstract class AccountDetailsState with _$AccountDetailsState {
  factory AccountDetailsState(
      {AccountDetails? accountDetails,
      Address? selectedAddress}) = _AccountDetailsState;
}

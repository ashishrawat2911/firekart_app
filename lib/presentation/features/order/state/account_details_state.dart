import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/account_details_model.dart';

part 'account_details_state.freezed.dart';

@freezed
abstract class AccountDetailsState with _$AccountDetailsState {
  factory AccountDetailsState({AccountDetailsModel? accountDetails, AddressModel? selectedAddress}) =
      _AccountDetailsState;
}

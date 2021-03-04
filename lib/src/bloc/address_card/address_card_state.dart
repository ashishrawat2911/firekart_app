import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_card_state.freezed.dart';

@freezed
abstract class AddressCardState with _$AddressCardState {
  const factory AddressCardState.idle() = Idle;

  const factory AddressCardState.editLoading() = EditLoading;

  const factory AddressCardState.setDefaultLoading() = SetDefaultLoading;

  const factory AddressCardState.error(String message) = Error;

  const factory AddressCardState.successful() = SuccessfulSaved;
}

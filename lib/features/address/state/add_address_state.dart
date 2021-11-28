import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_address_state.freezed.dart';

@freezed
abstract class AddAddressState with _$AddAddressState {
  const factory AddAddressState.idle() = Idle;

  const factory AddAddressState.buttonLoading() = ButtonLoading;

  const factory AddAddressState.error(String message) = AddressCardError;

  const factory AddAddressState.successful() = Successful;
}

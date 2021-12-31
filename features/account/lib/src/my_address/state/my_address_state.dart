import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/network.dart';

part 'my_address_state.freezed.dart';

@freezed
abstract class MyAddressState with _$MyAddressState {
  const factory MyAddressState({
    @Default(false) bool screenLoading,
    String? screenError,
    @Default(false) bool buttonLoading,
    AccountDetails? accountDetails,
    @Default([]) List<AddressCardState> addressStates,
  }) = _MyAddressState;
}

@freezed
abstract class AddressCardState with _$AddressCardState {
  const factory AddressCardState({
    @Default(0) int index,
    required Address address,
    @Default(false) bool editLoading,
    @Default(false) bool setDefaultLoading,
  }) = _AddressCardState;
}

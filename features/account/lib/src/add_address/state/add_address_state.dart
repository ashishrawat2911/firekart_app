import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_address_state.freezed.dart';

@freezed
abstract class AddAddressState with _$AddAddressState {
  const factory AddAddressState({
    @Default(false) bool buttonLoading,
    @Default(false) bool setAsDefault,
  }) = _AddAddressState;
}

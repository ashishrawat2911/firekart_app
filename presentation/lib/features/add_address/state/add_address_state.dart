import 'package:shared_dependencies/shared_dependencies.dart';

part 'add_address_state.freezed.dart';

@freezed
class AddAddressState with _$AddAddressState {
  const factory AddAddressState({
    @Default(false) bool buttonLoading,
    @Default(false) bool setAsDefault,
  }) = _AddAddressState;
}

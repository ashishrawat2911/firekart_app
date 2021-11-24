import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_login_state.freezed.dart';

@freezed
abstract class PhoneLoginState with _$PhoneLoginState {
  const factory PhoneLoginState.idle() = Idle;

  const factory PhoneLoginState.onButtonEnabled() = ButtonEnabled;

  const factory PhoneLoginState.onButtonDisabled() = ButtonDisabled;

  const factory PhoneLoginState.phoneLoading() = PhoneLoading;

  const factory PhoneLoginState.showError(String error) = ShowError;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_login_state.freezed.dart';

@freezed
abstract class OtpLoginState with _$OtpLoginState {
  const factory OtpLoginState.idle() = Idle;

  const factory OtpLoginState.codeCountDown(String value) = CodeCountDown;

  const factory OtpLoginState.onButtonEnabled() = ButtonEnabled;

  const factory OtpLoginState.onButtonDisabled() = ButtonDisabled;

  const factory OtpLoginState.confirmOtpLoading() = ConfirmOtpLoading;

  const factory OtpLoginState.resendOtpLoading() = ResendOtpLoading;

  const factory OtpLoginState.autoFetchOtp(String otp) = AutoFetchOtp;

  const factory OtpLoginState.loginSuccessFull() = LoginSuccessful;

  const factory OtpLoginState.showError(String error) = ShowError;
}

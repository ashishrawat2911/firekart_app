import 'package:core/core.dart';

part 'otp_login_state.freezed.dart';

@freezed
abstract class OtpLoginState with _$OtpLoginState {
  const factory OtpLoginState({
    String? codeCountDown,
    @Default(false) bool isButtonEnabled,
    @Default(false) bool confirmOtpLoading,
    @Default(false) bool resendOtpLoading,
    String? otp,
    String? error,
  }) = _OtpLoginState;
}

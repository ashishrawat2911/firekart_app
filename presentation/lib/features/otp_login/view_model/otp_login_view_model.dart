import 'dart:async';

import 'package:core/message_handler/message_handler.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:domain/usecases/send_otp_usecase.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../state/otp_login_state.dart';

@injectable
class OtpLoginViewModel extends ViewModel<OtpLoginState> {
  OtpLoginViewModel(this._sendOTPUseCase) : super(const OtpLoginState());
  final SendOTPUseCase _sendOTPUseCase;

  void validateButton(String otp) {
    if (otp.length == 6) {
      state = state.copyWith(isButtonEnabled: true);
    } else {
      state = state.copyWith(isButtonEnabled: false);
    }
  }

  Future<void> sendOtp(String phoneNumber) async {
    await _sendOTPUseCase.execute(
      phoneNumber: phoneNumber,
      onSuccess: (auth) {
        state = state.copyWith(otp: '******');
      },
      onError: (value) {
        MessageHandler.showSnackBar(title: value);
        state = state.copyWith(error: value);
      },
    );
  }

  void loginWithOtp(String smsCode, bool isResend) {
    if (state.resendOtpLoading || state.confirmOtpLoading) {
      return;
    }
    state = state.copyWith(
      confirmOtpLoading: !isResend,
      resendOtpLoading: isResend,
    );
    _sendOTPUseCase.loginWithOtp(
      smsCode,
      (error) {},
    );
  }
}

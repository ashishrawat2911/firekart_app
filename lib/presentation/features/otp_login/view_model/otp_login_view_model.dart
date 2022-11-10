import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttercommerce/domain/usecases/send_otp_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/message_handler/message_handler.dart';
import '../../../../core/state_manager/view_model.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../state/otp_login_state.dart';

@injectable
class OtpLoginViewModel extends ViewModel<OtpLoginState> {
  OtpLoginViewModel(this._sendOTPUseCase) : super(const OtpLoginState());
  final SendOTPUseCase _sendOTPUseCase;
  late String _verificationId;

  void validateButton(String otp) {
    if (otp.length == 6) {
      state = state.copyWith(isButtonEnabled: true);
    } else {
      state = state.copyWith(isButtonEnabled: false);
    }
  }

  Future<void> sendOtp(String phoneNumber) async {
    _sendOTPUseCase.execute(
      phoneNumber: phoneNumber,
      onSuccess: (auth) {
        state = state.copyWith(otp: '******');

        _login(auth);
      },
      onError: (value) {
        MessageHandler.showSnackBar(title: value);
        state = state.copyWith(error: value);
      },
      onVerificationId: (value) {
        _verificationId = value;
        Timer.periodic(const Duration(seconds: 60), (timer) {
          state = state.copyWith(
            codeCountDown: "00:${timer.tick < 10 ? "0${timer.tick}" : "${timer.tick}"}",
          );
        });
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

    final credential = PhoneAuthProvider.credential(verificationId: _verificationId, smsCode: smsCode);
    _login(credential);
  }

  Future<void> _login(AuthCredential authCred) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    try {
      await firebaseAuth.signInWithCredential(authCred);

      NavigationHandler.navigateTo(
        CheckStatusScreenRoute(checkForAccountStatusOnly: true),
        navigationType: NavigationType.pushAndPopUntil,
      );
    } catch (e) {
      MessageHandler.showSnackBar(title: e.toString());
      state = state.copyWith(error: e.toString());
    } finally {
      state = state.copyWith(
        confirmOtpLoading: false,
        resendOtpLoading: false,
      );
    }
  }
}

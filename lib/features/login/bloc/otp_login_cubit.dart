import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/global_listener/global_listener.dart';
import 'package:fluttercommerce/features/app/navigation/navigation_handler.dart';
import 'package:fluttercommerce/features/app/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/login/state/otp_login_state.dart';

class OtpLoginCubit extends StateManager<OtpLoginState> {
  OtpLoginCubit(this._firebaseManager, this._globalListener)
      : super(const OtpLoginState());
  final FirebaseManager _firebaseManager;
  final GlobalListener _globalListener;

  String? _verificationId;

  void validateButton(String otp) {
    if (otp.length == 6) {
      state = state.copyWith(isButtonEnabled: true);
    } else {
      state = state.copyWith(isButtonEnabled: false);
    }
  }

  Future<void> sendOtp(String phoneNumber) async {
    _firebaseManager.sendCode(phoneNumber,
        codeSent: (String verificationId, [int? forceResendingToken]) async {
      _verificationId = verificationId;
      Timer.periodic(const Duration(seconds: 60), (timer) {
        state = state.copyWith(
          codeCountDown:
              "00:${timer.tick < 10 ? "0${timer.tick}" : "${timer.tick}"}",
        );
      });
    }, codeAutoRetrievalTimeout: (String verificationId) {
      _verificationId = verificationId;
      state = state.copyWith(error: '');
    }, verificationFailed: (authException) {
      state = state.copyWith(error: authException.message);
    }, verificationCompleted: (AuthCredential auth) {
      state = state.copyWith(otp: '******');

      _login(auth);
    });
  }

  void loginWithOtp(String smsCode, bool isResend) {
    if (state.resendOtpLoading || state.confirmOtpLoading) {
      return;
    }
    state = state.copyWith(
      confirmOtpLoading: !isResend,
      resendOtpLoading: isResend,
    );

    final _credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!, smsCode: smsCode);
    _login(_credential);
  }

  Future<void> _login(AuthCredential authCred) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    try {
      await firebaseAuth.signInWithCredential(authCred);

      _globalListener.refreshListener(
          GlobalListenerConstants.accountDetails, '');
      NavigationHandler.navigateTo(
        CheckStatusScreenRoute.name,
        navigationType: NavigationType.PushAndPopUntil,
        predicate: (route) => false,
        arguments:
            const CheckStatusScreenRouteArgs(checkForAccountStatusOnly: true),
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    } finally {
      state = state.copyWith(
        confirmOtpLoading: false,
        resendOtpLoading: false,
      );
    }
  }
}

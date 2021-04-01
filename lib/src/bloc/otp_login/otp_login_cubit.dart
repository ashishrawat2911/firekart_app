import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/bloc/otp_login/otp_login_state.dart';
import 'package:fluttercommerce/src/core/utils/firebase_error.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/repository/auth_repository.dart';

import 'otp_login.dart';

class OtpLoginCubit extends Cubit<OtpLoginState> {
  AuthRepository authRepository = AppInjector.get<AuthRepository>();

  OtpLoginCubit() : super(OtpLoginState.onButtonDisabled());
  String _verificationId;

  validateButton(String otp) {
    if (otp.length == 6) {
      emit(OtpLoginState.onButtonEnabled());
    } else {
      emit(OtpLoginState.onButtonDisabled());
    }
  }

  sendOtp(String phoneNumber) async {
    authRepository.sendCode(phoneNumber,
        codeSent: (String verificationId, [int forceResendingToken]) async {
      _verificationId = verificationId;
      Timer.periodic(Duration(seconds: 60), (timer) {
        emit(OtpLoginState.codeCountDown(
            "00:${timer.tick < 10 ? "0${timer.tick}" : "${timer.tick}"}"));
      });
    }, codeAutoRetrievalTimeout: (String verificationId) {
      _verificationId = verificationId;
      emit(OtpLoginState.showError(""));
    }, verificationFailed: (AuthException authException) {
//          emit(OtpLoginState.showError(FirebaseErrors.checkAuthError(authException.message)));
      emit(OtpLoginState.showError(authException.message));
    }, verificationCompleted: (AuthCredential auth) {
      emit(OtpLoginState.autoFetchOtp("******"));
      _login(auth);
    });
  }

  loginWithOtp(String smsCode) {
    emit(OtpLoginState.confirmOtpLoading());
    var _credential = PhoneAuthProvider.getCredential(
        verificationId: _verificationId, smsCode: smsCode);
    _login(_credential);
  }

  _login(AuthCredential authCred) {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    try {
      firebaseAuth.signInWithCredential(authCred);
      emit(OtpLoginState.loginSuccessFull());
    } catch (e) {
      emit(OtpLoginState.showError(e));
    }
  }
}

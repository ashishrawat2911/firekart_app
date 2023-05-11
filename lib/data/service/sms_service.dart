import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@singleton
class SmsService {
  final FirebaseAuth _firebaseAuth;

  SmsService(this._firebaseAuth);

  late String _verificationId;

  Future<bool> sendCode(
    String phoneNumber,
    void Function(String error) onError,
  ) async {
    try {
      return _firebaseAuth
          .verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 60),
        verificationCompleted: _login,
        verificationFailed: (error) {
          onError(error.toString());
        },
        codeSent: (verificationId, forceResendingToken) {
          _verificationId = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          _verificationId = verificationId;
        },
      )
          .then((value) {
        return true;
      }).catchError((e) {
        return false;
      });
    } on PlatformException {
      return false;
    }
  }

  Future<void> _login(AuthCredential authCred) async {
    await _firebaseAuth.signInWithCredential(authCred);
  }

  Future<void> loginWithOtp(
    String smsCode,
    void Function(String error) onError,
  ) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: _verificationId,
        smsCode: smsCode,
      );
      await _login(credential);
    } catch (e) {
      onError(e.toString());
    }
  }
}

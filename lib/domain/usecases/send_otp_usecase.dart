import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttercommerce/data/repository/firestore_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SendOTPUseCase {
  final FirebaseRepository _firebaseRepository;

  SendOTPUseCase(this._firebaseRepository);

  Future<bool> execute({
    required String phoneNumber,
    required ValueChanged<PhoneAuthCredential> onSuccess,
    required ValueChanged<String> onError,
    required ValueChanged<String> onVerificationId,
  }) {
    return _firebaseRepository.sendCode(
      phoneNumber,
      verificationCompleted: (phoneAuthCredential) {
        onSuccess(phoneAuthCredential);
      },
      verificationFailed: (error) {
        onError(error.message ?? '');
      },
      codeSent: (verificationId, forceResendingToken) {
        onVerificationId(verificationId);
      },
      codeAutoRetrievalTimeout: (verificationId) {
        onVerificationId(verificationId);
      },
    );
  }
}

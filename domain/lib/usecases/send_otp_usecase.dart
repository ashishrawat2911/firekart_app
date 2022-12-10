import 'package:data/service/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class SendOTPUseCase {
  final FirebaseService firebaseService;

  SendOTPUseCase(this.firebaseService);

  Future<bool> execute({
    required String phoneNumber,
    required ValueChanged<dynamic> onSuccess,
    required ValueChanged<String> onError,
    required ValueChanged<String> onVerificationId,
  }) {
    return firebaseService.sendCode(
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

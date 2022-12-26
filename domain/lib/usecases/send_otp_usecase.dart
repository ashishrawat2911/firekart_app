import 'package:domain/repository/firebase_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class SendOTPUseCase {
  final FirebaseRepository firebaseService;

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

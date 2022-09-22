import 'package:flutter/cupertino.dart';

import '../../data/firebase_manager/firestore_manager.dart';

class SendOTPUseCase {
  final FirebaseManager _firebaseRepository;

  SendOTPUseCase(this._firebaseRepository);

  Future<bool> execute({
    required String phoneNumber,
    required VoidCallback onSuccess,
    required ValueChanged<String> onError,
    required ValueChanged<String> onVerificationId,
  }) {
    return _firebaseRepository.sendCode(
      phoneNumber,
      verificationCompleted: (phoneAuthCredential) {
        onSuccess();
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

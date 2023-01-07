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
  }) {
    return firebaseService.sendCode(phoneNumber, onError);
  }

  Future<void> loginWithOtp(
    String smsCode,
    void Function(String error) onError,
  ) {
    return firebaseService.loginWithOtp(smsCode, onError);
  }
}

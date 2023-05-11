import 'package:flutter/material.dart';
import 'package:fluttercommerce/domain/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

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

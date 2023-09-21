/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'dart:async';

import 'package:core/message_handler/message_handler.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:domain/usecases/send_otp_usecase.dart';
import 'package:presentation/routes/app_router.gr.dart';
import 'package:presentation/routes/route_handler.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../state/otp_login_state.dart';

@injectable
class OtpLoginViewModel extends ViewModel<OtpLoginState> {
  OtpLoginViewModel(this._sendOTPUseCase) : super(const OtpLoginState());
  final SendOTPUseCase _sendOTPUseCase;

  void validateButton(String otp) {
    if (otp.length == 4) {
      state = state.copyWith(isButtonEnabled: true);
    } else {
      state = state.copyWith(isButtonEnabled: false);
    }
  }

  Future<void> sendOtp(String phoneNumber) async {
    await _sendOTPUseCase.execute(phoneNumber: phoneNumber).then((value) {
      value.fold((l) {
        MessageHandler.showSnackBar(title: l.errorMessage);
        state = state.copyWith(error: l.errorMessage);
      }, (r) {
        state = state.copyWith(
          newUser: r.newUser,
        );
      });
    });
  }

  Future<void> loginWithOtp(
    String phoneNumber,
    String smsCode,
    bool isResend,
    String name,
  ) async {
    if (state.resendOtpLoading || state.confirmOtpLoading) {
      return;
    }
    state = state.copyWith(
      confirmOtpLoading: !isResend,
      resendOtpLoading: isResend,
    );
    await _sendOTPUseCase
        .loginWithOtp(phoneNumber, smsCode, name: name.isEmpty ? null : name)
        .then((value) {
      value.fold((l) {
        state = state.copyWith(
          confirmOtpLoading: false,
          resendOtpLoading: false,
        );
        MessageHandler.showSnackBar(title: l.errorMessage);
      }, (r) {
        RouteHandler.routeTo(
          CheckStatusRoute(checkForAccountStatusOnly: true),
          routingType: RoutingType.pushAndPopUntil,
        );
      });
    });
  }
}

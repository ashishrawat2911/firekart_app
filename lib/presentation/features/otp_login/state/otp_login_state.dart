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
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_login_state.freezed.dart';

@freezed
abstract class OtpLoginState with _$OtpLoginState {
  const factory OtpLoginState({
    String? codeCountDown,
    @Default(false) bool isButtonEnabled,
    @Default(false) bool confirmOtpLoading,
    @Default(false) bool resendOtpLoading,
    @Default(false) bool newUser,
    String? otp,
    String? error,
  }) = _OtpLoginState;
}

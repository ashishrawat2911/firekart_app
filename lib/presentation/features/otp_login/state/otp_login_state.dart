/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
    String? otp,
    String? error,
  }) = _OtpLoginState;
}

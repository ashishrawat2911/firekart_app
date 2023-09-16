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
import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_request_model.g.dart';

@JsonSerializable()
class OTPVerifyRequestModel {
  String phoneNumber;
  String otp;
  String? name;
  String deviceToken;

  Map<String, dynamic> toJson() => _$OTPVerifyRequestModelToJson(this);

  OTPVerifyRequestModel(
    this.phoneNumber,
    this.otp,
    this.name,
    this.deviceToken,
  );
}

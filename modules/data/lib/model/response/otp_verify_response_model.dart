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
import 'package:data/model/response/user_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_response_model.g.dart';

@JsonSerializable()
class OtpVerifyResponseModel {
  factory OtpVerifyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OtpVerifyResponseModelFromJson(json);

  String token;
  UserResponseModel user;

  OtpVerifyResponseModel(this.token, this.user);
}

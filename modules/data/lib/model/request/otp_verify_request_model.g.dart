// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OTPVerifyRequestModel _$OTPVerifyRequestModelFromJson(
        Map<String, dynamic> json) =>
    OTPVerifyRequestModel(
      json['phoneNumber'] as String,
      json['otp'] as String,
      json['name'] as String?,
      json['deviceToken'] as String,
    );

Map<String, dynamic> _$OTPVerifyRequestModelToJson(
        OTPVerifyRequestModel instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'otp': instance.otp,
      'name': instance.name,
      'deviceToken': instance.deviceToken,
    };

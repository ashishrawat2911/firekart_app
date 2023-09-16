// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerifyResponseModel _$OtpVerifyResponseModelFromJson(
        Map<String, dynamic> json) =>
    OtpVerifyResponseModel(
      json['token'] as String,
      UserResponseModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtpVerifyResponseModelToJson(
        OtpVerifyResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

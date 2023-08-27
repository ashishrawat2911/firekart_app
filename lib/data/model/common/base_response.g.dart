// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkResponse<T> _$NetworkResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    NetworkResponse<T>(
      json['success'] as bool,
      json['message'] as String,
      fromJsonT(json['data']),
    );

Map<String, dynamic> _$NetworkResponseToJson<T>(
  NetworkResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'success': instance.status,
      'message': instance.message,
      'data': toJsonT(instance.data),
    };

EmptyNetworkResponse _$EmptyNetworkResponseFromJson(
        Map<String, dynamic> json) =>
    EmptyNetworkResponse(
      json['success'] as bool,
      json['message'] as String,
    );

Map<String, dynamic> _$EmptyNetworkResponseToJson(
        EmptyNetworkResponse instance) =>
    <String, dynamic>{
      'success': instance.status,
      'message': instance.message,
    };

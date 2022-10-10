// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountDetailsModel _$AccountDetailsModelFromJson(Map<String, dynamic> json) =>
    AccountDetailsModel(
      json['name'] as String,
      json['phoneNumber'] as String?,
      (json['addresses'] as List<dynamic>?)
              ?.map((e) => AddressModel.fromJson(e))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AccountDetailsModelToJson(
        AccountDetailsModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'addresses': instance.addresses.map((e) => e.toJson()).toList(),
    };

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      json['name'] as String,
      json['pincode'] as String,
      json['address'] as String,
      json['city'] as String,
      json['state'] as String,
      json['phone_number'] as String,
      json['is_default'] as bool? ?? false,
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'pincode': instance.pincode,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'phone_number': instance.phoneNumber,
      'is_default': instance.isDefault,
    };

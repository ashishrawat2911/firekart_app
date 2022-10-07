// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountDetailsModel _$AccountDetailsModelFromJson(Map<String, dynamic> json) => AccountDetailsModel(
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)?.map((e) => AddressModel.fromJson(e)).toList() ?? const [],
    );

Map<String, dynamic> _$AccountDetailsModelToJson(AccountDetailsModel instance) => <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'addresses': instance.addresses.map((e) => e.toJson()).toList(),
    };

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      name: json['name'] as String,
      pincode: json['pincode'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      phoneNumber: json['phone_number'] as String,
      isDefault: json['is_default'] as bool? ?? false,
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) => <String, dynamic>{
      'name': instance.name,
      'pincode': instance.pincode,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'phone_number': instance.phoneNumber,
      'is_default': instance.isDefault,
    };

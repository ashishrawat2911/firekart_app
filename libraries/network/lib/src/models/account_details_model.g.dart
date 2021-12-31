// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountDetails _$AccountDetailsFromJson(Map<String, dynamic> json) =>
    AccountDetails(
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AccountDetailsToJson(AccountDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'addresses': instance.addresses.map((e) => e.toJson()).toList(),
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      name: json['name'] as String,
      pincode: json['pincode'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      phoneNumber: json['phone_number'] as String,
      isDefault: json['is_default'] as bool? ?? false,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'name': instance.name,
      'pincode': instance.pincode,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'phone_number': instance.phoneNumber,
      'is_default': instance.isDefault,
    };

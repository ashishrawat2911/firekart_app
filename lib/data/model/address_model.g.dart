// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      json['id'] as int,
      json['name'] as String,
      json['pincode'] as String,
      json['address'] as String,
      json['city'] as String,
      json['state'] as String,
      json['phoneNumber'] as String,
      json['isDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pincode': instance.pincode,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'phoneNumber': instance.phoneNumber,
      'isDefault': instance.isDefault,
    };

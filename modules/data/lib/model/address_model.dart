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

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel {
  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
  int id;
  String name;
  String pincode;
  String address;
  String city;
  String state;
  String phoneNumber;
  @JsonKey(defaultValue: false)
  bool isDefault;

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);

  @override
  String toString() {
    return 'Address{name: $name, pincode: $pincode, address: $address, city: $city, state: $state, phoneNumber: $phoneNumber, isDefault: $isDefault}';
  }

  AddressModel(
    this.id,
    this.name,
    this.pincode,
    this.address,
    this.city,
    this.state,
    this.phoneNumber,
    this.isDefault,
  );
}

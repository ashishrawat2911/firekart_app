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

class AccountDetails {
  AccountDetails({
    required this.id,
    required this.name,
    required this.phoneNumber,
  });

  final int id;
  String name;
  String phoneNumber;
}

class Address {
  Address({
    required this.id,
    required this.name,
    required this.pincode,
    required this.address,
    required this.city,
    required this.state,
    required this.phoneNumber,
    this.isDefault = false,
  });

  int id;
  String name;
  String pincode;
  String address;
  String city;
  String state;
  String phoneNumber;
  bool isDefault;

  String wholeAddress() {
    return '$address $city $state $pincode';
  }

  @override
  String toString() {
    return 'Address{id: $id, name: $name, pincode: $pincode, address: $address, city: $city, state: $state, phoneNumber: $phoneNumber, isDefault: $isDefault}';
  }
}

class AddAddress {
  AddAddress({
    required this.name,
    required this.pincode,
    required this.address,
    required this.city,
    required this.state,
    required this.phoneNumber,
    this.isDefault = false,
  });

  String name;
  String pincode;
  String address;
  String city;
  String state;
  String phoneNumber;
  bool isDefault;

  String wholeAddress() {
    return '$address $city $state $pincode';
  }
}

class EditAddress {
  final int id;
  final String? name;
  final String? pincode;
  final String? address;
  final String? city;
  final String? state;
  final String? phoneNumber;
  final bool? isDefault;

  EditAddress({
    required this.id,
    this.name,
    this.pincode,
    this.address,
    this.city,
    this.state,
    this.phoneNumber,
    this.isDefault,
  });
}

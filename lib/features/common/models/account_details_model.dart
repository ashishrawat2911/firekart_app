import 'package:json_annotation/json_annotation.dart';

part 'account_details_model.g.dart';

@JsonSerializable()
class AccountDetails {
  String name;
  String phoneNumber;
  List<Address> addresses;

  AccountDetails({
    required this.name,
    required this.phoneNumber,
    this.addresses = const [],
  });

  factory AccountDetails.fromDocument(json) => _$AccountDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AccountDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Address {
  String name;
  String pincode;
  String address;
  String city;
  String state;
  String phoneNumber;
  bool isDefault;

  Address(
      {required this.name,
      required this.pincode,
      required this.address,
      required this.city,
      required this.state,
      required this.phoneNumber,
      this.isDefault = false});

  factory Address.fromDocument(json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  String wholeAddress() {
    return "$address $city $state $pincode";
  }
}

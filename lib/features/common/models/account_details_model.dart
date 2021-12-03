import 'package:json_annotation/json_annotation.dart';

part 'account_details_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
)
class AccountDetails {
  AccountDetails({
    required this.name,
    required this.phoneNumber,
    this.addresses = const [],
  });

  factory AccountDetails.fromDocument(json) => _$AccountDetailsFromJson(json);
  String name;
  String? phoneNumber;
  List<Address> addresses;

  Map<String, dynamic> toJson() => _$AccountDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Address {
  Address(
      {required this.name,
      required this.pincode,
      required this.address,
      required this.city,
      required this.state,
      required this.phoneNumber,
      this.isDefault = false});

  factory Address.fromJson(json) => _$AddressFromJson(json);
  String name;
  String pincode;
  String address;
  String city;
  String state;
  String phoneNumber;
  bool isDefault;

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  String wholeAddress() {
    return "$address $city $state $pincode";
  }

  @override
  String toString() {
    return 'Address{name: $name, pincode: $pincode, address: $address, city: $city, state: $state, phoneNumber: $phoneNumber, isDefault: $isDefault}';
  }
}

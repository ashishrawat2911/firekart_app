import 'package:json_annotation/json_annotation.dart';

part 'account_details_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
)
class AccountDetailsModel {
  AccountDetailsModel({
    required this.name,
    required this.phoneNumber,
    this.addresses = const [],
  });

  factory AccountDetailsModel.fromDocument(json) => _$AccountDetailsModelFromJson(json);
  String name;
  String? phoneNumber;
  List<AddressModel> addresses;

  Map<String, dynamic> toJson() => _$AccountDetailsModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AddressModel {
  AddressModel(
      {required this.name,
      required this.pincode,
      required this.address,
      required this.city,
      required this.state,
      required this.phoneNumber,
      this.isDefault = false});

  factory AddressModel.fromJson(json) => _$AddressModelFromJson(json);
  String name;
  String pincode;
  String address;
  String city;
  String state;
  String phoneNumber;
  bool isDefault;

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);

  @override
  String toString() {
    return 'Address{name: $name, pincode: $pincode, address: $address, city: $city, state: $state, phoneNumber: $phoneNumber, isDefault: $isDefault}';
  }
}

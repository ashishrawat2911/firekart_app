class AccountDetails {
  AccountDetails({
    required this.name,
    required this.phoneNumber,
    this.addresses = const [],
  });

  String name;
  String? phoneNumber;
  List<Address> addresses;
}

class Address {
  Address({
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
    return "$address $city $state $pincode";
  }
}

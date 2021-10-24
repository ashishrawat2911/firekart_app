class AccountDetails {
  String name;
  String phoneNumber;
  List<Address> addresses = [];

  AccountDetails({this.name, this.phoneNumber, this.addresses});

  AccountDetails.fromDocument(json) {
    name = json['name'];
    phoneNumber = json['phone_number'];
    if (json['addresses'] != null) {
      addresses = new List<Address>();
      print(json["addresses"]);
      addresses = (json['addresses'] as List)
          ?.map((e) => e == null ? null : Address.fromDocument(e))
          ?.toList();
    } else {
      addresses = [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['phone_number'] = this.phoneNumber;
    if (this.addresses != null) {
      data['addresses'] = this.addresses.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Address {
  String name;
  String pincode;
  String address;
  String city;
  String state;
  String phoneNumber;
  bool isDefault;

  Address(
      {this.name,
      this.pincode,
      this.address,
      this.city,
      this.state,
      this.phoneNumber,
      this.isDefault = false});

  Address.fromDocument(json) {
    name = json['name'];
    pincode = json['pincode'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    phoneNumber = json['phone_number'];
    isDefault = json['is_default'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['pincode'] = this.pincode;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['phone_number'] = this.phoneNumber;
    data['is_default'] = this.isDefault;
    return data;
  }

  String wholeAddress() {
    return "$address $city $state $pincode";
  }
}

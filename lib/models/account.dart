

import 'package:json_annotation/json_annotation.dart';
part 'account.g.dart';

@JsonSerializable()
class WooAccountRequest {
  String name;
  String email;
  String phone;
  @JsonKey(toJson: _childProfileToJson, nullable: true)
  ChildProfile child;
  @JsonKey(name: 'shipping_address_list', toJson: _shippingAddressList,
      defaultValue: [], nullable: true)
  List<ShippingAddress> shippingAddressList;


  WooAccountRequest({this.phone, this.name, this.email, this.child, this.shippingAddressList});

  factory WooAccountRequest.fromJson(Map<String, dynamic> json) =>
  _$WooAccountRequestFromJson(json);
  Map<String, dynamic> toJson() => _$WooAccountRequestToJson(this);

}

@JsonSerializable()
class WooAccount {
  int id;
  @JsonKey(name: 'avatarURL')
  String avatar;
  @JsonKey(name: 'display_name')
  String fullname;
  @JsonKey(name: 'nice_name')
  String niceName;
  //String gender;
  //String birthday;
  @JsonKey(name: 'user_email')
  String email;
  String phone;
  // String address;
  // String city;
  String country;
  @JsonKey(toJson: _childProfileToJson, nullable: true)
  ChildProfile child;
  @JsonKey(name: 'shipping_address_list', toJson: _shippingAddressList, nullable: true)
  List<ShippingAddress> shippingAddressList;

  WooAccount(
      {this.id,
        this.fullname,
        this.niceName,
        //   this.gender,
        // this.birthday,
        //   this.address,
        this.phone,
        // this.city,
        this.country,
        this.email,
        this.avatar,
        this.child,
        this.shippingAddressList});

  factory WooAccount.fromJson(Map<String, dynamic> json) =>
      _$WooAccountFromJson(json);
  Map<String, dynamic> toJson() => _$WooAccountToJson(this);


  ShippingAddress get defaultShippingAddress {
    if (shippingAddressList?.isNotEmpty == true) {
      var addr = shippingAddressList.firstWhere((element) => element.defaultAddress, orElse: ()=>null);
      if (addr == null) addr = shippingAddressList.first;
      return addr;
    }
    return null;
  }

  WooAccountRequest convertToRequest() {
    return WooAccountRequest(
      name: this.niceName,
      phone: this.phone,
      email: this.email,
      child: this.child,
      shippingAddressList: this.shippingAddressList
    );
  }

}

@JsonSerializable()
class ChildProfile {
  String name;
  String birthday;

  ChildProfile({this.name, this.birthday});
  factory ChildProfile.fromJson(Map<String, dynamic> json) =>
      _$ChildProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ChildProfileToJson(this);
}

@JsonSerializable()
class ShippingAddress {
  String receiver;
  String phone;
  String address;
  String ward;
  String district;
  String city;
  @JsonKey(name: 'default')
  bool defaultAddress;

  ShippingAddress(
      {this.receiver,
        this.phone,
        this.address,
        this.ward,
        this.district,
        this.city,
        this.defaultAddress});

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingAddressToJson(this);
}


Map<String, dynamic> _childProfileToJson(ChildProfile childProfile) =>
    childProfile?.toJson();

List<Map<String, dynamic>> _shippingAddressList(
    List<ShippingAddress> shippingAddressList) =>
    shippingAddressList.map((e) => e.toJson()).toList();
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooAccountRequest _$WooAccountRequestFromJson(Map<String, dynamic> json) {
  return WooAccountRequest(
    phone: json['phone'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    child: json['child'] == null
        ? null
        : ChildProfile.fromJson(json['child'] as Map<String, dynamic>),
    shippingAddressList: (json['shipping_address_list'] as List)
            ?.map((e) => e == null
                ? null
                : ShippingAddress.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$WooAccountRequestToJson(WooAccountRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'child': _childProfileToJson(instance.child),
      'shipping_address_list':
          _shippingAddressList(instance.shippingAddressList),
    };

WooAccount _$WooAccountFromJson(Map<String, dynamic> json) {
  return WooAccount(
    id: json['id'] as int,
    fullname: json['display_name'] as String,
    niceName: json['nice_name'] as String,
    phone: json['phone'] as String,
    country: json['country'] as String,
    email: json['user_email'] as String,
    avatar: json['user_avatar'] as String,
    child: json['child'] == null
        ? null
        : ChildProfile.fromJson(json['child'] as Map<String, dynamic>),
    shippingAddressList: (json['shipping_address_list'] as List)
        ?.map((e) => e == null
            ? null
            : ShippingAddress.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WooAccountToJson(WooAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_avatar': instance.avatar,
      'display_name': instance.fullname,
      'nice_name': instance.niceName,
      'user_email': instance.email,
      'phone': instance.phone,
      'country': instance.country,
      'child': _childProfileToJson(instance.child),
      'shipping_address_list':
          _shippingAddressList(instance.shippingAddressList),
    };

ChildProfile _$ChildProfileFromJson(Map<String, dynamic> json) {
  return ChildProfile(
    name: json['name'] as String,
    birthday: json['birthday'] as String,
  );
}

Map<String, dynamic> _$ChildProfileToJson(ChildProfile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthday': instance.birthday,
    };

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) {
  return ShippingAddress(
    receiver: json['receiver'] as String,
    phone: json['phone'] as String,
    address: json['address'] as String,
    ward: json['ward'] as String,
    district: json['district'] as String,
    city: json['city'] as String,
    defaultAddress: json['default'] as bool,
  );
}

Map<String, dynamic> _$ShippingAddressToJson(ShippingAddress instance) =>
    <String, dynamic>{
      'receiver': instance.receiver,
      'phone': instance.phone,
      'address': instance.address,
      'ward': instance.ward,
      'district': instance.district,
      'city': instance.city,
      'default': instance.defaultAddress,
    };

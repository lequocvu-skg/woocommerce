// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooSimpleItemParam _$WooSimpleItemParamFromJson(Map<String, dynamic> json) {
  return WooSimpleItemParam(
    productId: json['product_id'] as String,
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$WooSimpleItemParamToJson(WooSimpleItemParam instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'quantity': instance.quantity,
    };

LineItemPayLoad _$LineItemPayLoadFromJson(Map<String, dynamic> json) {
  return LineItemPayLoad(
    productId: json['product_id'] as int,
    variationId: json['variation_id'] as int,
    quantity: json['quantity'] as int,
    productType: json['product_type'] as bool,
    wcBookingDuration: json['wc_bookings_field_duration'] as int,
    wcStartDateTime: json['wc_bookings_field_start_date_time'] as String,
    wcStartDateTimeZone:
        json['wc_bookings_field_start_date_local_timezone'] as String,
  );
}

Map<String, dynamic> _$LineItemPayLoadToJson(LineItemPayLoad instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'variation_id': instance.variationId,
      'quantity': instance.quantity,
      'product_type': instance.productType,
      'wc_bookings_field_duration': instance.wcBookingDuration,
      'wc_bookings_field_start_date_time': instance.wcStartDateTime,
      'wc_bookings_field_start_date_local_timezone':
          instance.wcStartDateTimeZone,
    };

WooUpdateCartItemParam _$WooUpdateCartItemParamFromJson(
    Map<String, dynamic> json) {
  return WooUpdateCartItemParam(
    cartItemKey: json['cart_item_key'] as String,
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$WooUpdateCartItemParamToJson(
        WooUpdateCartItemParam instance) =>
    <String, dynamic>{
      'cart_item_key': instance.cartItemKey,
      'quantity': instance.quantity,
    };

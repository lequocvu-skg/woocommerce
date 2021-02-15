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

WooVariantItemParam _$WooVariantItemParamFromJson(Map<String, dynamic> json) {
  return WooVariantItemParam(
    productId: json['product_id'] as String,
    variationId: json['variation_id'] as int,
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$WooVariantItemParamToJson(
        WooVariantItemParam instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'variation_id': instance.variationId,
      'quantity': instance.quantity,
    };

WooSimpleLineItem _$WooSimpleLineItemFromJson(Map<String, dynamic> json) {
  return WooSimpleLineItem(
    productId: json['product_id'] as String,
    name: json['name'] as String,
    variationId: json['variation_id'] as int,
    taxClass: json['tax_class'] as String,
    subtotal: json['subtotal'] as String,
    total: json['total'] as String,
    quantity: json['quantity'] as int,
    productType: json['product_type'] as bool,
    variation: json['variation'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$WooSimpleLineItemToJson(WooSimpleLineItem instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'variation_id': instance.variationId,
      'tax_class': instance.taxClass,
      'subtotal': instance.subtotal,
      'total': instance.total,
      'quantity': instance.quantity,
      'product_type': instance.productType,
      'variation': instance.variation,
    };

WooBookableLineItem _$WooBookableLineItemFromJson(Map<String, dynamic> json) {
  return WooBookableLineItem(
    productId: json['product_id'] as String,
    name: json['name'] as String,
    variationId: json['variation_id'] as int,
    taxClass: json['tax_class'] as String,
    subtotal: json['subtotal'] as String,
    total: json['total'] as String,
    quantity: json['quantity'] as int,
    productType: json['product_type'] as bool,
    wcBookingDuration: json['wc_bookings_field_duration'] as int,
    wcStartDateTime: json['wc_bookings_field_start_date_time'] as String,
    wcStartDateTimeZone:
        json['wc_bookings_field_start_date_local_timezone'] as String,
  );
}

Map<String, dynamic> _$WooBookableLineItemToJson(
        WooBookableLineItem instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'variation_id': instance.variationId,
      'tax_class': instance.taxClass,
      'subtotal': instance.subtotal,
      'total': instance.total,
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

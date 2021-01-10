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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineItems _$LineItemsFromJson(Map<String, dynamic> json) {
  return LineItems(
    productId: json['product_id'] as String,
    name: json['name'] as String,
    variationId: json['variation_id'] as int,
    taxClass: json['tax_class'] as String,
    subtotal: json['subtotal'] as String,
    total: json['total'] as String,
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$LineItemsToJson(LineItems instance) => <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'variation_id': instance.variationId,
      'tax_class': instance.taxClass,
      'subtotal': instance.subtotal,
      'total': instance.total,
      'quantity': instance.quantity,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCartLine _$WooCartLineFromJson(Map<String, dynamic> json) {
  return WooCartLine(
    key: json['key'] as String,
    productId: json['product_id'] as int,
    variationId: json['variation_id'] as int,
    variation: json['variation'],
    quantity: json['quantity'] as int,
    dataHash: json['data_hash'] as String,
    lineTaxData: json['line_tax_data'],
    lineSubtotal: json['line_subtotal'] as int,
    lineSubtotalTax: json['line_subtotal_tax'] as int,
    lineTotal: json['line_total'] as int,
    lineTax: json['line_tax'] as int,
    data: json['data'],
    productName: json['product_name'] as String,
    productImage: json['product_image'] as String,
  );
}

Map<String, dynamic> _$WooCartLineToJson(WooCartLine instance) =>
    <String, dynamic>{
      'key': instance.key,
      'product_id': instance.productId,
      'variation_id': instance.variationId,
      'variation': instance.variation,
      'quantity': instance.quantity,
      'data_hash': instance.dataHash,
      'line_tax_data': instance.lineTaxData,
      'line_subtotal': instance.lineSubtotal,
      'line_subtotal_tax': instance.lineSubtotalTax,
      'line_total': instance.lineTotal,
      'line_tax': instance.lineTax,
      'data': instance.data,
      'product_name': instance.productName,
      'product_image': instance.productImage,
    };

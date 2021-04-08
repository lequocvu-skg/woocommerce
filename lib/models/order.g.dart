// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineItems _$LineItemsFromJson(Map<String, dynamic> json) {
  return LineItems(
    id: json['id'] as int,
    name: json['name'] as String,
    productId: json['product_id'] as int,
    variationId: json['variation_id'] as int,
    quantity: json['quantity'] as int,
    taxClass: json['tax_class'] as String,
    subtotal: json['subtotal'] as String,
    subtotalTax: json['subtotal_tax'] as String,
    total: json['total'] as String,
    totalTax: json['total_tax'] as String,
    taxes: json['taxes'],
    metaData: (json['meta_data'] as List)
        ?.map((e) =>
            e == null ? null : MetaData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sku: json['sku'] as String,
    price: json['price'] as int,
    parentName: json['parent_name'] as String,
    productType: json['product_type'] as String,
    bookingIds: (json['booking_ids'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$LineItemsToJson(LineItems instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product_id': instance.productId,
      'variation_id': instance.variationId,
      'quantity': instance.quantity,
      'tax_class': instance.taxClass,
      'subtotal': instance.subtotal,
      'subtotal_tax': instance.subtotalTax,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'taxes': instance.taxes,
      'meta_data': metaListToJson(instance.metaData),
      'sku': instance.sku,
      'price': instance.price,
      'parent_name': instance.parentName,
      'product_type': instance.productType,
      'booking_ids': instance.bookingIds,
    };

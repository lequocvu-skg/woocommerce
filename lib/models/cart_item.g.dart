// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCartLine _$WooCartLineFromJson(Map<String, dynamic> json) {
  return WooCartLine(
    key: json['key'] as String,
    type: json['type'] as String,
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
  )..booking = json['booking'] == null
      ? null
      : BookingItemInCart.fromJson(json['booking'] as Map<String, dynamic>);
}

Map<String, dynamic> _$WooCartLineToJson(WooCartLine instance) =>
    <String, dynamic>{
      'key': instance.key,
      'type': instance.type,
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
      'booking': bookingToJson(instance.booking),
    };

BookingItemInCart _$BookingItemInCartFromJson(Map<String, dynamic> json) {
  return BookingItemInCart(
    year: json['_year'] as String,
    month: json['_month'] as String,
    day: json['_day'] as String,
    persons: json['_persons'] as List,
    date: json['_date'] as String,
    dateInText: json['date'] as String,
    time: json['_time'] as String,
    timeInText: json['time'] as String,
    quantity: json['_qty'] as int,
    starDate: json['_start_date'] as int,
    endDate: json['_end_date'] as int,
    allDay: json['_all_day'] as int,
    localTimeZone: json['_local_timezone'] as String,
    cost: json['_cost'] as int,
    bookingId: json['_booking_id'] as int,
  );
}

Map<String, dynamic> _$BookingItemInCartToJson(BookingItemInCart instance) =>
    <String, dynamic>{
      '_year': instance.year,
      '_month': instance.month,
      '_day': instance.day,
      '_persons': instance.persons,
      '_date': instance.date,
      'date': instance.dateInText,
      '_time': instance.time,
      'time': instance.timeInText,
      '_qty': instance.quantity,
      '_start_date': instance.starDate,
      '_end_date': instance.endDate,
      '_all_day': instance.allDay,
      '_local_timezone': instance.localTimeZone,
      '_cost': instance.cost,
      '_booking_id': instance.bookingId,
    };

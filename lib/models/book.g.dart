// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingParams _$BookingParamsFromJson(Map<String, dynamic> json) {
  return BookingParams(
    productId: json['product_id'] as String,
    quantity: json['quantity'] as int,
    wpBookingDuration: json['wc_bookings_field_duration'] as int,
    wpBookingStartDate: json['wc_bookings_field_start_date_time'] as String,
    wpBookingLocalTimeZone:
        json['wc_bookings_field_start_date_local_timezone'] as String,
  );
}

Map<String, dynamic> _$BookingParamsToJson(BookingParams instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'wc_bookings_field_duration': instance.wpBookingDuration,
      'wc_bookings_field_start_date_time': instance.wpBookingStartDate,
      'wc_bookings_field_start_date_local_timezone':
          instance.wpBookingLocalTimeZone,
    };

Slot _$SlotFromJson(Map<String, dynamic> json) {
  return Slot(
    date: json['date'] as String,
    duration: json['duration'] as int,
    available: json['available'] as int,
    booked: json['booked'] as int,
    productId: json['product_id'] as int,
  );
}

Map<String, dynamic> _$SlotToJson(Slot instance) => <String, dynamic>{
      'date': instance.date,
      'duration': instance.duration,
      'available': instance.available,
      'booked': instance.booked,
      'product_id': instance.productId,
    };

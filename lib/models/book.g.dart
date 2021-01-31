// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingParams _$BookingParamsFromJson(Map<String, dynamic> json) {
  return BookingParams(
    productId: json['product_id'] as String,
    allDay: json['all_day'] as bool,
    cost: json['cost'] as String,
    customerId: json['customer_id'] as int,
    dateCreated: json['date_created'] as int,
    dateModified: json['date_modified'] as int,
    orderItemId: json['order_item_id'] as int,
    parentId: json['parent_id'] as int,
    personCounts:
        (json['person_counts'] as List)?.map((e) => e as int)?.toList(),
    wpBookingStartDate: json['wc_bookings_field_start_date_time'] as String,
    wpBookingLocalTimeZone:
        json['wc_bookings_field_start_date_local_timezone'] as String,
    start: json['start'] as int,
    end: json['end'] as int,
    status: json['status'] as String,
    localTimeZone: json['local_timezone'] as String,
  );
}

Map<String, dynamic> _$BookingParamsToJson(BookingParams instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'all_day': instance.allDay,
      'cost': instance.cost,
      'customer_id': instance.customerId,
      'date_created': instance.dateCreated,
      'date_modified': instance.dateModified,
      'order_item_id': instance.orderItemId,
      'parent_id': instance.parentId,
      'person_counts': instance.personCounts,
      'wc_bookings_field_start_date_time': instance.wpBookingStartDate,
      'wc_bookings_field_start_date_local_timezone':
          instance.wpBookingLocalTimeZone,
      'start': instance.start,
      'end': instance.end,
      'status': instance.status,
      'local_timezone': instance.localTimeZone,
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

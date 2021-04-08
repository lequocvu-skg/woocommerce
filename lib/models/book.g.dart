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

WooBooking _$WooBookingFromJson(Map<String, dynamic> json) {
  return WooBooking(
    id: json['id'] as int,
    allDay: json['all_day'] as bool,
    cost: json['cost'] as String,
    customerId: json['customer_id'] as int,
    dateCreated: json['date_created'] as int,
    dateModified: json['date_modified'] as int,
    start: json['start'] as int,
    end: json['end'] as int,
    resourceId: json['resource_id'] as int,
    orderId: json['order_id'] as int,
    orderItemId: json['order_item_id'] as int,
    googleCalendarEventId: json['google_calendar_event_id'] as String,
    productId: json['product_id'] as int,
    status: json['status'] as String,
    localTimeZone: json['local_timezone'] as String,
    links: json['_links'],
  );
}

Map<String, dynamic> _$WooBookingToJson(WooBooking instance) =>
    <String, dynamic>{
      'id': instance.id,
      'all_day': instance.allDay,
      'cost': instance.cost,
      'customer_id': instance.customerId,
      'date_created': instance.dateCreated,
      'date_modified': instance.dateModified,
      'start': instance.start,
      'end': instance.end,
      'resource_id': instance.resourceId,
      'order_id': instance.orderId,
      'order_item_id': instance.orderItemId,
      'google_calendar_event_id': instance.googleCalendarEventId,
      'product_id': instance.productId,
      'status': instance.status,
      'local_timezone': instance.localTimeZone,
      '_links': instance.links,
    };

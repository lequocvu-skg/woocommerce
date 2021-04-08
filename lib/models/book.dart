

import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable()
class BookingParams {
  @JsonKey(name: 'product_id')
  String productId;
  int quantity;
  @JsonKey(name: 'wc_bookings_field_duration')
  int wpBookingDuration;
  @JsonKey(name: 'wc_bookings_field_start_date_time')
  String wpBookingStartDate;
  @JsonKey(name: 'wc_bookings_field_start_date_local_timezone')
  String wpBookingLocalTimeZone;

  BookingParams({this.productId, this.quantity, this.wpBookingDuration,
    this.wpBookingStartDate, this.wpBookingLocalTimeZone});


  factory BookingParams.fromJson(Map<String, dynamic> json) => _$BookingParamsFromJson(json);
  Map<String, dynamic> toJson() => _$BookingParamsToJson(this);
}

@JsonSerializable()
class Slot {
  String date;
  int duration;
  int available;
  int booked;
  @JsonKey(name: 'product_id')
  int productId;

  Slot({this.date, this.duration, this.available, this.booked, this.productId});

  factory Slot.fromJson(Map<String, dynamic> json) => _$SlotFromJson(json);
  Map<String, dynamic> toJson() => _$SlotToJson(this);
}

@JsonSerializable()
class WooBooking {
  int id;
  @JsonKey(name: 'all_day')
  bool allDay;
  String cost;
  @JsonKey(name: 'customer_id')
  int customerId;
  @JsonKey(name: 'date_created')
  int dateCreated;
  @JsonKey(name: 'date_modified')
  int dateModified;
  int start;
  int end;
  @JsonKey(name: 'resource_id')
  int resourceId;
  @JsonKey(name: 'order_id')
  int orderId;
  @JsonKey(name: 'order_item_id')
  int orderItemId;
  @JsonKey(name: 'google_calendar_event_id')
  String googleCalendarEventId;
  @JsonKey(name: 'product_id')
  int productId;
  String status;
  @JsonKey(name: 'local_timezone')
  String localTimeZone;
  @JsonKey(name: '_links')
  dynamic links;

  WooBooking({this.id, this.allDay, this.cost, this.customerId, this.dateCreated, this.dateModified, this.start, this.end,
    this.resourceId, this.orderId, this.orderItemId, this.googleCalendarEventId, this.productId, this.status, this.localTimeZone, this.links});

  factory WooBooking.fromJson(Map<String, dynamic> json) => _$WooBookingFromJson(json);
  Map<String, dynamic> toJson() => _$WooBookingToJson(this);

}
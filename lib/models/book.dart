

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


import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable()
class BookingParams {
  @JsonKey(name: 'product_id')
  String productId;
  @JsonKey(name: 'all_day')
  bool allDay;
  String cost;
  @JsonKey(name: 'customer_id')
  int customerId;
  @JsonKey(name: 'date_created')
  int dateCreated;
  @JsonKey(name: 'date_modified')
  int dateModified;
  @JsonKey(name: 'order_item_id')
  int orderItemId;
  @JsonKey(name: 'parent_id')
  int parentId;
  @JsonKey(name: 'person_counts')
  List<int> personCounts;
  @JsonKey(name: 'wc_bookings_field_start_date_time')
  String wpBookingStartDate;
  @JsonKey(name: 'wc_bookings_field_start_date_local_timezone')
  String wpBookingLocalTimeZone;
  int start;
  int end;
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'local_timezone')
  String localTimeZone;


  BookingParams({this.productId, this.allDay, this.cost, this.customerId,
    this.dateCreated, this.dateModified, this.orderItemId, this.parentId,
    this.personCounts, this.wpBookingStartDate, this.wpBookingLocalTimeZone,
    this.start, this.end, this.status, this.localTimeZone});


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
/*
 * BSD 3-Clause License

    Copyright (c) 2020, RAY OKAAH - MailTo: ray@flutterengineer.com, Twitter: Rayscode
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

    1. Redistributions of source code must retain the above copyright notice, this
    list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

    3. Neither the name of the copyright holder nor the names of its
    contributors may be used to endorse or promote products derived from
    this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
    FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
    DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
    SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
    OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
    OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 */

import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce/constants/constants.dart';
import 'package:woocommerce/models/order.dart';
import 'package:woocommerce/utilities/utils.dart';

part 'cart_item.g.dart';

class WooCartItem {
  String key;
  int id;
  int quantity;
  String name;
  String sku;
  String permalink;
  List<WooCartItemImages> images;
  String price;
  String linePrice;
  List<String> variation;

  WooCartItem(
      {this.key,
      this.id,
      this.quantity,
      this.name,
      this.sku,
      this.permalink,
      this.images,
      this.price,
      this.linePrice,
      this.variation});

  WooCartItem.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    id = json['id'];
    quantity = json['quantity'];
    name = json['name'];
    sku = json['sku'];
    permalink = json['permalink'];
    if (json['images'] != null) {
      images = new List<WooCartItemImages>();
      json['images'].forEach((v) {
        images.add(new WooCartItemImages.fromJson(v));
      });
    }
    price = json['price'];
    linePrice = json['line_price'];
    variation = json['variation'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['id'] = this.id;
    data['quantity'] = this.quantity;
    data['name'] = this.name;
    data['sku'] = this.sku;
    data['permalink'] = this.permalink;
    if (this.images != null) {
      data['images'] = this.images.map((v) => v.toJson()).toList();
    }
    data['price'] = this.price;
    data['line_price'] = this.linePrice;
    data['variation'] = this.variation;
    return data;
  }

  @override
  toString() => this.toJson().toString();
}

class WooCartItemImages {
  String id;
  String src;
  String thumbnail;
  bool srcset;
  String sizes;
  String name;
  String alt;

  WooCartItemImages(
      {this.id,
      this.src,
      this.thumbnail,
      this.srcset,
      this.sizes,
      this.name,
      this.alt});

  WooCartItemImages.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    src = json['src'];
    thumbnail = json['thumbnail'];

    if (json['srcset'] is String) {
      srcset = bool.fromEnvironment(json['srcset']);
    } else {
      srcset = json['srcset'];
    }
    sizes = json['sizes'];
    name = json['name'];
    alt = json['alt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['src'] = this.src;
    data['thumbnail'] = this.thumbnail;
    data['srcset'] = this.srcset;
    data['sizes'] = this.sizes;
    data['name'] = this.name;
    data['alt'] = this.alt;
    return data;
  }
}

@JsonSerializable()
class WooCartLine {
  String key;
  String type; // booking, product
  @JsonKey(name: 'product_id')
  int productId;
  @JsonKey(name: 'variation_id')
  int variationId;
  dynamic variation;
  int quantity;
  @JsonKey(name: 'data_hash')
  String dataHash;
  @JsonKey(name: 'line_tax_data')
  dynamic lineTaxData;
  @JsonKey(name: 'line_subtotal')
  int lineSubtotal;
  @JsonKey(name: 'line_subtotal_tax')
  int lineSubtotalTax;
  @JsonKey(name: 'line_total')
  int lineTotal;
  @JsonKey(name: 'line_tax')
  int lineTax;
  dynamic data;
  @JsonKey(name: 'product_name')
  String productName;
  @JsonKey(name: 'product_image')
  String productImage;
  // @JsonKey(name: 'wc_bookings_field_duration')
  // int wpBookingDuration;
  // @JsonKey(name: 'wc_bookings_field_start_date_time')
  // String wpBookingStartDate;
  // @JsonKey(name: 'wc_bookings_field_start_date_local_timezone')
  // String wpBookingLocalTimeZone;
  @JsonKey(toJson: bookingToJson)
  BookingItemInCart booking;


  WooCartLine(
      {this.key,
      this.type,
      this.productId,
      this.variationId,
      this.variation,
      this.quantity,
      this.dataHash,
      this.lineTaxData,
      this.lineSubtotal,
      this.lineSubtotalTax,
      this.lineTotal,
      this.lineTax,
      this.data,
      this.productName,
      this.productImage,
      // this.wpBookingDuration,
      // this.wpBookingStartDate,
      // this.wpBookingLocalTimeZone
      });

  factory WooCartLine.fromJson(Map<String, dynamic> json) =>
      _$WooCartLineFromJson(json);
  Map<String, dynamic> toJson() => _$WooCartLineToJson(this);

  static WooCartLine fromLineItems(LineItems item) {
    return WooCartLine(
        productName: item.name,
        productId: item.id,
        lineSubtotal: double.parse(item.subtotal).round(),
        lineTotal: double.parse(item.total).round(),
        lineTax: double.parse(item.totalTax).round(),
        lineSubtotalTax: double.parse(item.subtotalTax).round(),
        quantity: item.quantity);
  }

  ProductType get productType => parseStringToProductType(type);
}

Map<String, dynamic> bookingToJson(BookingItemInCart item) => item.toJson();

@JsonSerializable()
class BookingItemInCart {
  @JsonKey(name: "_year")
  String year;
  @JsonKey(name: "_month")
  String month;
  @JsonKey(name: "_day")
  String day;
  @JsonKey(name: "_persons")
  List<dynamic> persons;
  @JsonKey(name: "_date")
  String date;
  @JsonKey(name: "date")
  String dateInText;
  @JsonKey(name: "_time")
  String time;
  @JsonKey(name: "time")
  String timeInText;
  @JsonKey(name: "_qty")
  int quantity;
  @JsonKey(name: "_start_date")
  int starDate;
  @JsonKey(name: "_end_date")
  int endDate;
  @JsonKey(name: "_all_day")
  int allDay;
  @JsonKey(name: "_local_timezone")
  String localTimeZone;
  @JsonKey(name: "_cost")
  int cost;
  @JsonKey(name: "_booking_id")
  int bookingId;

  BookingItemInCart({this.year, this.month, this.day, this.persons, this.date,
  this.dateInText, this.time, this.timeInText, this.quantity, this.starDate,
  this.endDate, this.allDay, this.localTimeZone, this.cost, this.bookingId});

  factory BookingItemInCart.fromJson(Map<String, dynamic> json) =>
      _$BookingItemInCartFromJson(json);
  Map<String, dynamic> toJson() => _$BookingItemInCartToJson(this);
}

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

import 'order_payload.dart';

part 'cart.g.dart';

class WooCart {
  String currency;
  int itemCount;
  List<WooCartItems> items;
  bool needsShipping;
  String totalPrice;
  int totalWeight;

  WooCart(
      {this.currency,
        this.itemCount,
        this.items,
        this.needsShipping,
        this.totalPrice,
        this.totalWeight});

  WooCart.fromJson(Map<String, dynamic> json) {
    currency = json['currency'];
    itemCount = json['item_count'];
    if (json['items'] != null) {
      items = new List<WooCartItems>();
      json['items'].forEach((v) {
        items.add(new WooCartItems.fromJson(v));
      });
    }
    needsShipping = json['needs_shipping'];
    totalPrice = json['total_price'].toString();
    totalWeight = json['total_weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currency'] = this.currency;
    data['item_count'] = this.itemCount;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['needs_shipping'] = this.needsShipping;
    data['total_price'] = this.totalPrice;
    data['total_weight'] = this.totalWeight;
    return data;
  }
  @override toString() => this.toJson().toString();
}

class WooCartItems {
  String key;
  int id;
  int quantity;
  String name;
  String sku;
  String permalink;
  List<WooCartImages> images;
  String price;
  String linePrice;
  List<String> variation;

  WooCartItems(
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

  WooCartItems.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    id = json['id'];
    quantity = json['quantity'];
    name = json['name'];
    sku = json['sku'];
    permalink = json['permalink'];
    if (json['images'] != null) {
      images = new List<WooCartImages>();
      json['images'].forEach((v) {
        images.add(new WooCartImages.fromJson(v));
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
}

class WooCartImages {
  String id;
  String src;
  String thumbnail;
  String srcset;
  String sizes;
  String name;
  String alt;

  WooCartImages(
      {this.id,
        this.src,
        this.thumbnail,
        this.srcset,
        this.sizes,
        this.name,
        this.alt});

  WooCartImages.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    src = json['src'];
    thumbnail = json['thumbnail'];
    srcset = json['srcset'].toString();
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
class WooSimpleItemParam {
  @JsonKey(name: 'product_id')
  String productId;
  int quantity;

  WooSimpleItemParam({this.productId, this.quantity});

  factory WooSimpleItemParam.fromJson(Map<String, dynamic> json) =>
      _$WooSimpleItemParamFromJson(json);
  Map<String, dynamic> toJson() => _$WooSimpleItemParamToJson(this);
}

@JsonSerializable()
class WooVariantItemParam {
  @JsonKey(name: 'product_id')
  String productId;
  @JsonKey(name: 'variation_id')
  int variationId;
  int quantity;

  WooVariantItemParam({this.productId, this.variationId, this.quantity});

  factory WooVariantItemParam.fromJson(Map<String, dynamic> json) =>
      _$WooVariantItemParamFromJson(json);
  Map<String, dynamic> toJson() => _$WooVariantItemParamToJson(this);
}

@JsonSerializable()
class WooSimpleLineItem extends LineItems {
  @JsonKey(name: 'product_type')
  bool productType;

  WooSimpleLineItem({
    int productId,
    String name,
    int variationId,
    String taxClass,
    String subtotal,
    String total,
    int quantity,
    this.productType}): super(
      productId: productId,
      name: name,
      variationId: variationId,
      taxClass: taxClass,
      subtotal: subtotal,
      total: total,
      quantity: quantity);

  // WooSimpleLineItem({this.productType, this.productId, this.quantity});

  factory WooSimpleLineItem.fromJson(Map<String, dynamic> json) =>
      _$WooSimpleLineItemFromJson(json);
  Map<String, dynamic> toJson() => _$WooSimpleLineItemToJson(this);
}

@JsonSerializable()
class WooBookableLineItem extends LineItems {
  @JsonKey(name: 'product_type')
  bool productType;
  @JsonKey(name: 'wc_bookings_field_duration')
  int wcBookingDuration;
  @JsonKey(name: "wc_bookings_field_start_date_time")
  String wcStartDateTime;
  @JsonKey(name: "wc_bookings_field_start_date_local_timezone")
  String wcStartDateTimeZone;

  WooBookableLineItem({
    int productId,
    String name,
    int variationId,
    String taxClass,
    String subtotal,
    String total,
    int quantity,
    this.productType,
    this.wcBookingDuration,
    this.wcStartDateTime,
    this.wcStartDateTimeZone
  }) : super(
      productId: productId,
      name: name,
      variationId: variationId,
      taxClass: taxClass,
      subtotal: subtotal,
      total: total,
      quantity: quantity
  );

  factory WooBookableLineItem.fromJson(Map<String, dynamic> json) =>
      _$WooBookableLineItemFromJson(json);
  Map<String, dynamic> toJson() => _$WooBookableLineItemToJson(this);
}

@JsonSerializable()
class WooUpdateCartItemParam {

  @JsonKey(name: 'cart_item_key')
  String cartItemKey;
  int quantity;

  WooUpdateCartItemParam({this.cartItemKey, this.quantity});

  factory WooUpdateCartItemParam.fromJson(Map<String, dynamic> json) =>
      _$WooUpdateCartItemParamFromJson(json);
  Map<String, dynamic> toJson() => _$WooUpdateCartItemParamToJson(this);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishlistProduct _$WishlistProductFromJson(Map<String, dynamic> json) {
  return WishlistProduct(
    id: json['ID'] as int,
    wishlistId: json['wishlist_id'] as int,
    productId: json['product_id'] as int,
    variationId: json['variation_id'] as int,
    author: json['author'] as int,
    date: json['date'] as int,
    quantity: json['quantity'] as int,
    price: json['price'] as String,
    inStock: json['in_stock'] as bool,
    productImage: json['product_image'] as String,
  )
    ..meta = json['meta'] as List
    ..data = json['data'];
}

Map<String, dynamic> _$WishlistProductToJson(WishlistProduct instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'wishlist_id': instance.wishlistId,
      'product_id': instance.productId,
      'variation_id': instance.variationId,
      'author': instance.author,
      'date': instance.date,
      'quantity': instance.quantity,
      'price': instance.price,
      'in_stock': instance.inStock,
      'meta': instance.meta,
      'data': instance.data,
      'product_image': instance.productImage,
    };

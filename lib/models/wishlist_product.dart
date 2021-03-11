import 'package:json_annotation/json_annotation.dart';
part 'wishlist_product.g.dart';


@JsonSerializable()
class WishlistProduct {
  @JsonKey(name: 'ID')
  int id;
  @JsonKey(name: 'wishlist_id')
  int wishlistId;
  @JsonKey(name: 'product_id')
  int productId;
  @JsonKey(name: 'variation_id')
  int variationId;
  int author;
  int date;
  int quantity;
  String price;
  @JsonKey(name: 'in_stock')
  bool inStock;
  List<dynamic> meta;
  dynamic data;
  @JsonKey(name: 'product_image')
  String productImage;

  WishlistProduct(
      {this.id,
      this.wishlistId,
      this.productId,
      this.variationId,
      this.author,
      this.date,
      this.quantity,
      this.price,
      this.inStock,
      this.productImage
        });

  factory WishlistProduct.fromJson(Map<String, dynamic> json) =>
      _$WishlistProductFromJson(json);
  Map<String, dynamic> toJson() => _$WishlistProductToJson(this);


}
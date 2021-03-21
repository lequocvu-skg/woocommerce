import 'package:woocommerce/woocommerce.dart';
import 'constants/constants.dart';
import 'models/book.dart';
import 'utilities/extension_utils.dart';

extension WooBooking on WooCommerce {


  /// Returns a list of all [WooProduct], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#products.
  Future<List<WooProduct>> getBookingProducts(
      {int page,
        int perPage,
        String search,
        String after,
        String before,
        String order,
        String orderBy,
        String slug,
        String status,
        String type,
        String sku,
        String category,
        String tag,
        String shippingClass,
        String attribute,
        String attributeTerm,
        String taxClass,
        String minPrice,
        String maxPrice,
        String stockStatus,
        List<int> exclude,
        List<int> parentExclude,
        String include,
        List<int> parent,
        int offset,
        bool featured,
        bool onSale}) async {
    Map<String, dynamic> payload = {};

    ({'page': page, 'per_page': perPage, 'search': search,
      'after': after, 'before': before,
      'exclude': exclude,
      'include': include != null ? Uri.encodeComponent(include) : include,
      'offset': offset,
      'order': order, 'orderby': orderBy, 'parent': parent,
      'parent_exclude': parentExclude, 'slug': slug,
      'status': status, 'type': type, 'sku': sku,
      'featured': featured,
      // 'category': category,
      'category': category != null ? Uri.encodeComponent(category) : category,
      // 'tag': tag,
      'tag': tag != null ? Uri.encodeComponent(tag) : tag,
      'shipping_class': shippingClass,
      'attribute': attribute != null ? Uri.encodeComponent(attribute) : attribute,
      'attribute_term': attributeTerm != null ? Uri.encodeComponent(attributeTerm) : attributeTerm,
      'tax_class': taxClass, 'on_sale': onSale,
      'min_price': minPrice, 'max_price': maxPrice, 'stock_status': stockStatus,

    }.cleanup()).forEach((k, v) {
      if(v != null) payload[k] = v.toString();
    });

    printToLog("Parameters: " + payload.toString());
    List<WooProduct> products =[];
    setApiResourceUrl(path: 'products', hostType: HostType.BOOKING, queryParameters: payload);
    final response = await get(queryUri.toString());
    printToLog('response gotten : '+response.toString());
    printToLog('this is the queri uri : '+queryUri.toString());
    for(var p in response){
      var prod = WooProduct.fromJson(p);
      printToLog('product gotten here : '+prod.name.toString());
      products.add(prod);
    }
    return products;
  }



}
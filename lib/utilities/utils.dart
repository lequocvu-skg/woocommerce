



import 'package:woocommerce/constants/constants.dart';


///
/// color => attribute_pa_color
/// size => attribute_pa_size
/// custom => attribute_custom
String formatKeyAttr(String attr) {
  if (attr.toLowerCase() == 'color' || attr.toLowerCase() == 'size') {
    return 'attribute_pa_${attr.toLowerCase()}';
  }
  return 'attribute_${attr.toLowerCase()}';
}

String formatValueAttr(String key, String value) {
  if (key.toLowerCase() == 'color' || key.toLowerCase() == 'size') {
    return value.toLowerCase();
  }
  return value;
}

String parseProductTypeToString(ProductType type) {
  switch(type) {
    case ProductType.SIMPLE:
      return 'simple';
    case ProductType.VARIATION:
      return 'variation';
    case ProductType.BOOKABLE:
      return 'bookable';
    default:
      return 'unknown';
  }
}

ProductType parseStringToProductType(String type) {
  switch(type) {
    case 'variation':
    case 'variable':
      return ProductType.VARIATION;
    case 'simple':
      return ProductType.SIMPLE;
    case 'bookable':
    case 'booking':
      return ProductType.BOOKABLE;
    default:
      return ProductType.UNKNOWN;
  }
}




import 'package:woocommerce/constants/constants.dart';

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
      return ProductType.VARIATION;
    case 'simple':
      return ProductType.SIMPLE;
    case 'bookable':
      return ProductType.BOOKABLE;
    default:
      return ProductType.UNKNOWN;
  }
}
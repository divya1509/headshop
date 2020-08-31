import 'package:headshop/pages/contents.dart';

class ProductList {
  int _index = 0;
  List<Content> _products = [
    Content('Product 1', 56, 4.5, 'This is the description for Product 1'),
    Content('Product 2', 45, 2.3, 'This is the description for Product 2'),
    Content('Product 3', 78, 4.9, 'This is the description for Product 3'),
    Content('Product 4', 89, 4.7, 'This is the description for Product 4'),
    Content('Product 5', 24, 3.1, 'This is the description for Product 5'),
    Content('Product 6', 67, 5.0, 'This is the description for Product 6'),
  ];

  String getName(int index) {
    return _products[index].productName;
  }

  int getPrice(int index) {
    return _products[index].price;
  }

  double getRating(int index) {
    return _products[index].rating;
  }

  String getDescription(int index) {
    return _products[index].description;
  }

  void setIndex(int index) {
    _index = index;
  }

  int getIndex() {
    return _index;
  }
}

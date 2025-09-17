void main() {
  Product p1 = Product();
  p1.name = "LipGloss";
  p1.price = 70;
  print(
      "Product name:${p1.name} price: ${p1.price} after Discount : ${p1.discount}");
}

class Product {
  String? _name;
  double? _price;
  set name(String? name) {
    if (name == null || name.isEmpty) {
      print("Rejected");
    } else {
      _name = name;
    }
  }

  String? get name => _name;
  set price(double? price) {
    if (price == null || price.isNegative) {
      print("Rejected");
    } else {
      _price = price;
    }
  }

  double? get price => _price;
  double? get discount => _price! - (_price! * .1);
}

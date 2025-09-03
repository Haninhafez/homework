void main() {
  productNameAndDiscount("lipGloss", 5);
}

void productNameAndDiscount(String productName, [double discount = 0]) {
  if (discount == 0) {
    print("Product has no discount");
  } else {
    print('Product has discount $discount %');
  }
}

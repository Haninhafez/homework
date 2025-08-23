// ignore_for_file: dead_code

void main() {
  double productPrice = 1000;
  bool isStudent = true;
  bool hasCoupon = false;
  double totalPrice;

  if (isStudent) {
    totalPrice = productPrice - (productPrice * .15);
  } else if (hasCoupon) {
    totalPrice = productPrice - (productPrice * .10);
  } else if (productPrice > 1200) {
    totalPrice = productPrice - (productPrice * .5);
  } else {
    totalPrice = productPrice;
  }

  print("Final price :$totalPrice");
}

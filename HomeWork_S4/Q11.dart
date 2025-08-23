// ignore_for_file: dead_code

import 'dart:io';

void main() {
  double productPrice = 1000;
  print("Are you Sturdent? true / false");
  String Answer = stdin.readLineSync()!;
  bool isStudent = (Answer.toLowerCase() == 'true');
  bool? hasCoupon;
  if (!isStudent) {
    print("Do you have a coupon? true / false");
    Answer = stdin.readLineSync()!;
    hasCoupon = (Answer.toLowerCase() == 'true');
  }
  double totalPrice;

  if (isStudent) {
    totalPrice = productPrice - (productPrice * .15);
  } else if (hasCoupon!) {
    totalPrice = productPrice - (productPrice * .10);
  } else if (productPrice > 1200) {
    totalPrice = productPrice - (productPrice * .5);
  } else {
    totalPrice = productPrice;
  }

  print("Final price :$totalPrice");
}

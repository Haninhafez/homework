import 'dart:io';

void main() {
  double price = 180;
  double finalPrice;
  print('Are you Student?');
  String Answer = stdin.readLineSync()!;
  bool isStudent = true;
  if (isStudent && price >= 150) {
    finalPrice = price - 15;
  } else {
    finalPrice = price;
  }
  print('Final price :$finalPrice EGP');
}

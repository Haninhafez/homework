import 'dart:io';

void main() {
  print("Enter three number:");
  int sum = 0;
  for (int i = 1; i <= 3; i++) {
    print("Num $i :");
    int num = int.parse(stdin.readLineSync()!);
    sum += num;
  }
  print("Sum = $sum");
  double avrage = sum / 3;
  print("Avrage = ${avrage}");
  bool avrageAbove50 = avrage > 50;
  print("Is avrage is above 50? $avrageAbove50");
}

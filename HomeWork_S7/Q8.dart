import 'dart:io';

void main() {
  print("Enter a number ");
  String input = stdin.readLineSync()!;
  int num = int.parse(input);
  int temp = num;
  int sum = 0;
  int largest = 0;
  while (temp > 0) {
    int digit = temp % 10;
    sum += digit;
    if (digit > largest) {
      largest = digit;
    }
  }
  print("Sum : $sum");
  print("Largest : $largest");
}

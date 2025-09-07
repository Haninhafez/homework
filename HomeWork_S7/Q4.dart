import 'dart:io';

void main() {
  List<int> numbers = [];
  print("Enter 5 numbers :");
  for (int i = 1; i <= 5; i++) {
    print("Num $i:");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  numbers.sort();
  print("Smallest number is ${numbers.first}");
  print("Max number is ${numbers.last}");
}

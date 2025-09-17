import 'dart:collection';
import 'dart:io';
import 'dart:math';

void main() {
  print("Enter a list of numbers");
  String input = stdin.readLineSync()!;
  List<int> LInput = input.split(' ').map(int.parse).toList();
  int max = LInput.reduce((a, b) => (b > a ? b : a));
  int min = LInput.reduce((a, b) => (a > b ? b : a));
  double average = LInput.reduce((a, b) => a + b) / LInput.length;
  int counterOddNumbers =
      LInput.fold(0, (counter, n) => counter + (n.isOdd ? 1 : 0));
  int counterEvenNumbers = LInput.length - counterOddNumbers;

  print("List: $LInput");
  print("Max number: $max");
  print("Min number: $min");
  print("Diffrence : ${max - min}");
  print("Average: $average");
  print("Count of odd numbers: $counterOddNumbers");
  print("Count of even numbers: $counterEvenNumbers");
}

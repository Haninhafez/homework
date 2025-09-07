import 'dart:io';

void main() {
  print("Enter number :");
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    int result = i * num;
    print("num * $i = $result");
    sum += result;
  }
  print("Sum of all result : $sum");
}

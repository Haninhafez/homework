import 'dart:io';

void main() {
  print("Enter a number :");
  int num = int.parse(stdin.readLineSync()!);
  int counter = 0;
  for (int i = 1; i <= num; i++) {
    if (i % 2 != 0) {
      print(i);
      counter++;
    }
  }
  print("Number of odd nums = $counter");
}

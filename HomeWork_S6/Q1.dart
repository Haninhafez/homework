import 'dart:io';

void main() {
  print("Enter Your birthday ");
  int birthyear = int.parse(stdin.readLineSync()!);
  print("You are ${2025 - birthyear} years old");
}

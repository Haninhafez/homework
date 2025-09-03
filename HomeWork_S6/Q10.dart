import 'dart:io';

void main() {
  print("Enter a Number");
  int n = int.parse(stdin.readLineSync()!);
  print("Sum from 0 to $n = ${sumOneToN(n)}");
}

int sumOneToN(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

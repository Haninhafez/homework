void main() {
  int Num = 6;
  int factorial = 1;
  for (int i = Num; i > 0; i--) {
    factorial = factorial * i;
  }
  print('Factorial number of $Num : ${factorial}');
}

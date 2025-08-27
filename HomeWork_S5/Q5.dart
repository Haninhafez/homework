void main() {
  String price = 'EGP 12.5';
  double doublePrice = double.parse(price.replaceAll('EGP', ' '));
  print(doublePrice);
}

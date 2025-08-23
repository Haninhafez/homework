void main() {
  String currency = 'EGP';
  double price = 150.5;

  String formatPrice = price.toString().padLeft(8);
  String priceTag = "$currency $formatPrice";
  print("Price Tag: $priceTag");
  print("Lenght Price Tag: ${priceTag.length}");
}

class Product {
  String name;
  double price;

  Product(this.name, [this.price = 0]);

  void printDetails() {
    print('Name: $name, Price: \$${price}');
  }
}

void main() {
  Product product1 = Product('Laptop', 1200.50); 
  Product product2 = Product('Notebook');        

  product1.printDetails();
  product2.printDetails();
}

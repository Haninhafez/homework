import 'dart:io';

void main() {
  print("Enter ur path");
  String path = stdin.readLineSync()!.toLowerCase();
  Map<String, String> data = {
    '/': 'Home Page',
    '/profile': 'User Profile',
    '/products': 'List of Products',
    '/about': 'About our store'
  };
  switch (path) {
    case '/':
      print(data['/']);
      break;
    case '/profile':
      print(data['/profile']);
      break;
    case '/products':
      print(data['/products']);
      break;
    case '/about':
      print(data['/about']);
      break;
    default:
      print("Wrong path!");
      break;
  }
}

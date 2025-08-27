import 'dart:io';

void main() {
  print('Enter path:');
  String path = stdin.readLineSync()!;
  if (path == '/') {
    print("Home");
  } else {
    print("404");
  }
}

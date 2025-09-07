import 'dart:io';

void main() {
  print("Enter a setence");
  String sentance = stdin.readLineSync()!;
  List<String> ListWord = sentance.split("");

  print(ispalindrom(ListWord));
}

String filtered(List sentance) {
  String avoiding = "~`@#\$%^&*()_+,.";
  String filtered = "";
  for (var i in sentance) {}
  return filtered;
}

bool ispalindrom(List sentance) {
  int ptrLeft = 0;
  int ptrRight = sentance.length - 1;

  while (ptrLeft <= ptrRight) {
    if (sentance[ptrLeft] != sentance[ptrRight])
      return false;
    else {
      ptrRight--;
      ptrLeft++;
    }
  }
  return true;
}

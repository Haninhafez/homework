import 'dart:io';

void main() {
  print("Enter a setence");
  String sentance = stdin.readLineSync()!.toLowerCase();

  print(ispalindrom(sentance));
}

bool ispalindrom(String sentance) {
  RegExp regExp = RegExp(r'[^a-zA-Z0-9]');
  sentance = sentance.replaceAll(regExp, '');
  List ListWord = sentance.split('');

  int ptrLeft = 0;
  int ptrRight = sentance.length - 1;

  while (ptrLeft <= ptrRight) {
    if (ListWord[ptrLeft] != ListWord[ptrRight])
      return false;
    else {
      ptrRight--;
      ptrLeft++;
    }
  }
  return true;
}

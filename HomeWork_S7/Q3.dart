import 'dart:io';

void main() {
  print("Enter a word");
  String word = stdin.readLineSync()!;
  var reverseWord = word.split('').reversed;
  String Reversed = reverseWord.join();
  String vowel = "aouie";
  int vowelCounter = 0;
  for (var i in reverseWord) {
    if (vowel.contains(i)) {
      vowelCounter++;
    }
  }
  print(Reversed);
  print("Counter Vowel : $vowelCounter");
}

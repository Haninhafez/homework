import 'dart:io';

void main() {
  print("Enter a short sentance ");
  String sentence = stdin.readLineSync()!;
  List<String> listSentence = sentence.split(" ");
  Map<String, dynamic> storage = {};
  for (var x in listSentence) {
    if (storage.containsKey(x)) {
      storage[x] += 1;
    } else {
      storage[x] = 1;
    }
  }
  print("How many word in sentence ? ${listSentence.length}");
//  print(storage);
  storage.forEach((key, value) {
    int maxFrequency = 1;
    if (value > maxFrequency) {
      maxFrequency = value;
      print("$key is frequency $maxFrequency times");
    }
  });
}

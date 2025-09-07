import 'dart:io';
import 'dart:math';

void main() {
  List<num> randomNumber = randomNumbers();
  for (int i = 1; i <= 3; i++) {
    print("Enter a number :");
    int number = int.parse(stdin.readLineSync()!);
    if (randomNumber.contains(number)) {
      print("Correct answer (:");
    } else {
      print("Wrong Answer ): ");
    }
  }
  print("Numbers : $randomNumber");
}

List<num> randomNumbers() {
  List<num> random = List.generate(3, (index) => Random().nextInt((20) + 1));
  return random;
}

import 'dart:io';

void main() {
  print("Enter your grade:");
  int mark = int.parse(stdin.readLineSync()!);
  String? grade;
  if (mark <= 100) {
    if (mark >= 90) {
      grade = 'A';
    } else if (mark >= 80) {
      grade = 'B';
    } else if (mark >= 70) {
      grade = 'C';
    } else if (mark >= 60) {
      grade = 'D';
    } else {
      grade = 'F';
    }
  } else {
    print("You Entered a wrong mark");
  }
  switch (grade) {
    case 'A':
      print("Your Grade is A");
      break;
    case 'B':
      print("Your Grade is B");
      break;
    case 'C':
      print("Your Grade is C");
      break;
    case 'D':
      print("Your Grade is D");
      break;
    default:
      print("Your Grade is F");
      break;
  }
}

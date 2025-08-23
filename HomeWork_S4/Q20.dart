import 'dart:io';

void main() {
  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);
  bool? hasParent;
  String area = "general";
  if (age < 18) {
    print("Is your parent with you? true / false");
    String parent = stdin.readLineSync()!;
    hasParent = (parent.toLowerCase() == 'true');
    if (hasParent.toString() == 'false') {
      print("Access denied : You are under 18 without ur parent");
      return;
    }
  }
  if (age >= 18 || hasParent!) {
    switch (area) {
      case 'general':
        print("Access granted: Welcome to the general area.");
        break;
      case "restricted":
        print("Access granted: Restricted area, be careful!");
        break;
      default:
        print("Known Area!");
        break;
    }
  }
}

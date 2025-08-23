void main() {
  List<int> ListOfNumber = [1, 2, 3, 4, 1, 2, 5, 1, 5, 38, 7, 8, 15, 29, 29];
  Set<int> uniqueNumbers = ListOfNumber.toSet();
  if (uniqueNumbers.length < ListOfNumber.length) {
    print("Duplicates were removed");
  } else {
    print("No duplicates found");
  }
  print("Unique numbers :$uniqueNumbers");
}

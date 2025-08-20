void main() {
  List<int> ListOfNumbers = [4, 4, 5, 6, 6, 7];
  Set<int> SetOfNumbers = ListOfNumbers.toSet();
  print(SetOfNumbers);
  SetOfNumbers.add(8);
  print(SetOfNumbers);
  SetOfNumbers.remove(4);
  print(SetOfNumbers);
  print(SetOfNumbers.contains(5));
}

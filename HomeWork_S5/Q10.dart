void main() {
  List<int> numbers = [3, 7, 2, 9, 12, 4, 6];
  List<int> divisableNumbers = [];
  for (var i in numbers) {
    if (i % 3 == 0) {
      divisableNumbers.add(i);
    }
  }
  print("Divisable Number by 3 : $divisableNumbers");
}

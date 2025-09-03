void main() {
  List<int> listNumbers = [5, 10, 15, 20, 25];
  double sum = 0;
  for (int num in listNumbers) {
    sum += num;
  }
  print("The Avrage of numbers is ${sum / listNumbers.length}");
}

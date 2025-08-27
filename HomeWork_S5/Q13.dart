void main() {
  List<String> Names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> countNames = {};
  for (var name in Names) {
    if (countNames.containsKey(name)) {
      countNames[name] = (countNames[name]! + 1);
    } else {
      countNames[name] = 1;
    }
  }

  countNames.forEach((name, count) {
    if (count > 1) print("$name is repeated $count times");
  });
}

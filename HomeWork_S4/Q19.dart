void main() {
  List<String> L_Names = [
    'Hanin',
    'Jo',
    'Sanaa',
    'Jo',
    'Hanin',
    'Hanin',
  ];
  Set<String> S_Names = L_Names.toSet();
  Map<String, int> countNames = {};
  for (var name in L_Names) {
    if (countNames.containsKey(name)) {
      countNames[name] = (countNames[name]! + 1);
    } else {
      countNames[name] = 1;
    }
  }

  if (L_Names.length > S_Names.length) {
    print("There are duplicates names");
  } else {
    print("There aren't duplicates names");
  }

  countNames.forEach((name, count) {
    if (count > 1) print("$name is repeated $count times");
  });
}

List<int> countBits(int n) {
  List<int> result = [];
  for (int i = 0; i <= n; i++) {
    String bits = i.toRadixString(2);
    bits = bits.replaceAll('0', '');
    result.add(bits.length.toInt());
  }
  return result;
}

List<int> countBits2(int n) {
  List<int> result = List.filled(n + 1, 0);
  for (int i = 0; i <= n; i++) {
    result[i] = result[i >> 1] + (i & 1);
  }
  return result;
}

void main() {
  print(countBits(5));
}

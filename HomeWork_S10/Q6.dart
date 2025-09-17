void main() {
  String s = "()[]{}";
  print("Is valid ?? ${isvalid(s)}");
}

bool isvalid(String s) {
  List stack = [];
  Map<String, String> storage = {")": "(", "]": "[", "}": "{"};
  for (var i in s.split('')) {
    if (storage.containsValue(i)) {
      stack.add(i);
    } else if (storage.containsKey(i)) {
      if (stack.isEmpty || stack.last != storage[i]) {
        return false;
      } else {
        stack.removeLast();
      }
    }
  }
  return true;
}

import 'dart:developer';

bool isValid(String s) {
  List<String> stack = [];
  Map<String, String> storage = {"}": "{", ")": "(", "]": "["};
  for (var x in s.split("")) {
    if (storage.containsValue(x)) {
      stack.add(x);
    } else if (storage.containsKey(x)) {
      if ((stack.isEmpty || storage[x] != stack.last))
        return false;
      else
        stack.removeLast();
    }
  }
  if (stack.isNotEmpty) return false;
  return true;
}

void main() {
  String s = "[";
  print(isValid(s));
}

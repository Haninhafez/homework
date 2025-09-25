void main() {
  String s = "a";
  String t = "ab";
  // print(isAnagram(s, t));
  var function;
  function = (String s) => print(s);
  doWork(function);
}

doWork(f(String s)) {
  f("Hello Hanin");
}

bool isAnagram(String s, String t) {
  List ListS = s.split('');
  if (s.length != t.length) return false;
  for (var i in ListS) {
    if (!t.contains(i)) return false;
  }
  return true;
}

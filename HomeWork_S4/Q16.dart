void main() {
  int a = 5, b = 5, c = 9;
  bool expression1 = (a + b) > (b + c) || a > c;
  bool expression2 = (a * c) == (b * c);
  bool expression3 = (a / b) > c && b != c;

  print("Expression 1: ($a + $b) > ($b + $c) || $a > $c  = $expression1");
  print("Expression 2: ($a * $c) == ($b * $c) = $expression2");
  print("Expression 3: ($a / $b) > $c && $b != $c =$expression3");

  if (expression2) {
    print("Rule passed");
  } else {
    print("Rule faild");
  }
}

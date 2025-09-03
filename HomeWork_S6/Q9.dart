void main() {
  biggestNumber(8, 8);
}

void biggestNumber(int a, int b) {
  if (a > b) {
    print("Number $a is bigger than $b ");
  } else if (b > a) {
    print("Number $b is bigger than $a ");
  } else {
    print("$a is equal $b ");
  }
}

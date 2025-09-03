void main() {
  personINFO("Hanin", "Abdelhafez");
}

void personINFO(String firstName, String lastName, [int? age]) {
  print(firstName + " " + lastName);
  if (age == null) {
    print("age is provided");
  } else {
    print("Age = $age");
  }
}

void main() {
  int? bouns;
  if (bouns == null) {
    print("No Bouns");
  } else if (bouns > 50) {
    print("Big Bouns");
  } else if (bouns <= 50) {
    print("Small Bouns");
  }
}

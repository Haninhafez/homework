void main() {
  Car mycar = Car();
  mycar.year = 2022;
  mycar.brand = "MG";
  print("Car -> brand : ${mycar.brand}  year : ${mycar.year}");
  Car mycar1 = Car();
  mycar1.year = 1800;
  mycar1.brand = "MG";
  print("Car -> brand : ${mycar1.brand}  year : ${mycar1.year}");
}

class Car {
  String? _brand;
  int? _year;
  set brand(String? brand) {
    if (brand == null || brand.isEmpty) {
      print("Rejected");
    } else {
      _brand = brand;
    }
  }

  set year(int? year) {
    if (year != null && year > 1889) {
      _year = year;
    } else {
      print("Rejected");
    }
  }

  String? get brand => _brand;
  int? get year => _year;
}

abstract class Vechle {
  String _brand = "";
  int _year = 2020;
  int _baseFuelPerKM;
  int currentCapacity;

  Vechle(this._baseFuelPerKM,
      {required String brand,
      required int year,
      required this.currentCapacity}) {
    this.brand = brand;
    this.year = year;
  }

  set brand(String brand) {
    if (brand.isNotEmpty) {
      _brand = brand;
    } else {
      print('Invalid');
    }
  }

  String get brand => _brand;

  set year(int year) {
    if (year > 0) {
      _year = year;
    } else {
      print('Invalid');
    }
  }

  int get year => _year;
  get baseFuelPerKM => _baseFuelPerKM;

  double fuelCompetion(int distance);
}

class Motorcycle extends Vechle {
  double _engineEfficiency = .1;

  Motorcycle(
    super.baseFuelPerKM, {
    required super.brand,
    required super.year,
    required double engineEfficiency,
    required super.currentCapacity,
  });

  set engineEfficiency(engineEfficiency) {
    if (engineEfficiency > 0) {
      _engineEfficiency = engineEfficiency;
    } else {
      print('Invalid');
    }
  }

  double? get engineEfficiency => _engineEfficiency;

  @override
  double fuelCompetion(int distance) {
    return distance * baseFuelPerKM * _engineEfficiency;
  }
}

class RaceCar extends Vechle {
  double _powerRatio = 6;

  RaceCar(super.baseFuelPerKM,
      {required super.brand,
      required super.year,
      required double powerRatio,
      required super.currentCapacity});

  set powerRatio(powerRatio) {
    if (powerRatio > 0) {
      _powerRatio = powerRatio;
    } else {
      print('Invalid');
    }
  }

  double get powerRatio => _powerRatio;
  @override
  double fuelCompetion(int distance) {
    return (_powerRatio + 1) * baseFuelPerKM * distance;
  }
}

void main() {
  List<Vechle> Vechles = [
    RaceCar(100,
        brand: "Ferrari", year: 2025, powerRatio: 9.86, currentCapacity: 8000),
    Motorcycle(300,
        brand: "Hyndai",
        year: 2008,
        engineEfficiency: 0.8,
        currentCapacity: 5700)
  ];

  List<int> trips = [150, 350];
  for (var Vechle in Vechles) {
    double fuelCompetion = 0;
    for (var trip in trips) {
      fuelCompetion += Vechle.fuelCompetion(trip);
    }
    if (Vechle.currentCapacity < fuelCompetion) {
      print("${Vechle.brand} has not enough fuel to compleate the trip");
    } else {
      print("${Vechle.brand} has  enough fuel to compleate the trip");
    }
  }
}

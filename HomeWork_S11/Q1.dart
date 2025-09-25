class tripFuel {
  double? _fuel;
  double _fuelPerKM = .065;
  double? _distance;
  set fuel(double? fuel) {
    if (fuel != null && fuel > 0) {
      _fuel = fuel;
    } else {
      print('Invalid');
    }
  }

  double? get fuel => _fuel;

  set fuelPerKM(double? fuelPerKM) {
    if (fuelPerKM != null && fuelPerKM > 0) {
      _fuelPerKM = fuelPerKM;
    } else {
      print('Invalid');
    }
  }

  double? get fuelPerKM => _fuelPerKM;

  set distance(double? distance) {
    if (distance != null && distance > 0) {
      _distance = distance;
    } else {
      print('Invalid');
    }
  }

  double? get distance => _distance;

  double defineFule(double distance) {
    _distance = distance;
    return _distance! / _fuelPerKM;
  }
}

class Motorcycle extends tripFuel {
  double? _engaineCapasity;
  set engaineCapasity(double? engaineCapasity) {
    if (engaineCapasity != null && engaineCapasity > 0) {
      _engaineCapasity = engaineCapasity;
    } else {
      print('Invalid');
    }
  }

  double? get engaineCapasity => _engaineCapasity;

  double defineFule(double distance) {
    double fuelDefined = super.defineFule(distance);
    double fuelUsage = 1 + (_engaineCapasity! / 500) * .1;
    return fuelDefined * fuelUsage;
  }
}

class RaceCar extends tripFuel {
  double? _horsePower;
  set horsePower(double? horsePower) {
    if (horsePower != null && horsePower > 0) {
      _horsePower = horsePower;
    } else {
      print('Invalid');
    }
  }

  double? get horsePower => _horsePower;

  double defineFule(double distance) {
    double fuelDefined = super.defineFule(distance);
    double fuelUsage = 1 + (_horsePower! / 200) * .1;
    return fuelDefined * fuelUsage;
  }
}

void main() {
  List<double> tripOfDistance = [180, 80, 60];
  double totalDistance = tripOfDistance.reduce((a, b) => a + b);
  tripFuel trip1 = tripFuel();
  trip1.distance = totalDistance;
  trip1.fuel = 150;
  trip1.fuelPerKM = .065;

  Motorcycle motor = Motorcycle();
  motor.engaineCapasity = 1500;
  var motorFuel = motor.defineFule(totalDistance);

  RaceCar Rcar = RaceCar();
  Rcar.horsePower = 200;
  var RcarFuel = Rcar.defineFule(totalDistance);

  if (motorFuel > RcarFuel) {
    print(
        "Motorcycle is better than Race Car it has ${motor.engaineCapasity} CC");
  }

  if (motorFuel < RcarFuel) {
    print("Race Car is better than Motorcycle it has ${Rcar.horsePower} HP");
  }
}

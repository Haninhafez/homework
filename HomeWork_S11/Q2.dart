import 'dart:math';

abstract class shape {
  double area();
}

class Circle extends shape {
  double? _radise;
  set radise(double? radise) {
    if (radise != null && radise! > 0) {
      _radise = radise;
    } else {
      print('Invalid');
    }
  }

  double? get radise => _radise;

  double area() => _radise! * _radise! * pi;
}

class Rectangel extends shape {
  double? _lenght;
  double? _width;
  set lenght(double? lenght) {
    if (lenght != null && lenght! > 0) {
      _lenght = lenght;
    } else {
      print('Invalid');
    }
  }

  double? get lenght => _lenght;

  set width(double? width) {
    if (width != null && width! > 0) {
      _width = width;
    } else {
      print('Invalid');
    }
  }

  double? get width => _width;

  double area() => _lenght! * _width!;
}

class Squear extends shape {
  double? _lenght;
  set lenght(double? lenght) {
    if (lenght != null && lenght! > 0) {
      _lenght = lenght;
    } else {
      print('Invalid');
    }
  }

  double? get lenght => _lenght;

  double area() => _lenght! * _lenght!;
}

double totalCost(double totalArea) {
  double totalCost = 0;
  double editTotalArea = totalArea;

  if (totalArea > 50) {
    totalCost += 50 * 1.5;
    totalArea -= 50;
  } else {
    return totalCost * 1.5;
  }

  if (totalArea > 100) {
    totalCost += 100 * 1.25;
    totalArea -= 100;
  } else {
    return totalCost * 1.25;
  }

  totalCost += editTotalArea * 1;
  return totalCost;
}

void main() {
  Circle circle1 = Circle();
  circle1.radise = 20;
  var circleArea = circle1.area();

  Rectangel rectangel = Rectangel();
  rectangel.lenght = 10;
  rectangel.width = 15;
  var rectangelArea = rectangel.area();

  Squear squear = Squear();
  squear.lenght = 15;
  var squearArea = squear.area();

  List<shape> shapes = [
    rectangel,
    circle1,
    squear,
  ];
  double totalArea = 0;
  for (var i in shapes) {
    totalArea += i.area();
  }

  double totalCostIn = totalCost(totalArea);
  print(
      "Total Cost =${totalCostIn.toStringAsFixed(2)} for this area = ${totalArea.toStringAsFixed(2)} ");
}

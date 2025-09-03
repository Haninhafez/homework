void main() {
  Map<String, double> students = {
    'Hanin': 99,
    'Mayada': 70,
    'Hala': 75,
    'Sanaa': 100,
  };
  double biggestmark = 0;
  String? studentName;
  students.forEach((name, mark) {
    if (biggestmark < mark) {
      biggestmark = mark;
      studentName = name;
    }
  });
  print("$studentName is heighest mark $biggestmark");
}

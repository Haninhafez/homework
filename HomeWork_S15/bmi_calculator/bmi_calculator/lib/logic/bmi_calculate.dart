class InfoToCalculate {
  String gender;
  double height;
  double weigth;
  int age;
  InfoToCalculate({
    required this.gender,
    required this.height,
    required this.weigth,
    required this.age,
  });
}

class BmiCalculate {
  InfoToCalculate info;
  BmiCalculate(this.info);
  double get bmiCalculation {
    double result;
    double height = info.height / 100;
    double weight = info.weigth;
    result = weight / (height * height);
    return result;
  }
}

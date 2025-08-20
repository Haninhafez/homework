void main() {
  List<Map<String, dynamic>> Student = [
    {
      'Name': "Farida",
      'Grade': 100,
    },
    {
      'Name': "Hanin",
      'Grade': 90,
    }
  ];
  print(Student[1]["Grade"]);
  int grade1 = Student[0]['Grade'];
  int grade2 = Student[1]['Grade'];
  double Avrage = (grade1 + grade2) / 2;
  print("Avrage of grades:$Avrage");
}

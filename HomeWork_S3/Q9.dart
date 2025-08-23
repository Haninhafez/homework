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

  double Avrage = (Student[0]['Grade'] + Student[1]['Grade']) / 2;
  print("Avrage of grades:$Avrage");
}

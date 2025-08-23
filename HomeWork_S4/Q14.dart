void main() {
  List<int>? Scores = [15, 35, 25];
  if (Scores == null || Scores.isEmpty) {
    print('No Scores ');
  } else {
    int sum = Scores.first + Scores.last;
    print("Sum of First and Last element :$sum");
    if (sum >= 40) {
      print("Sum is greater or equal than 40");
    } else {
      print("Sum is less than 40");
    }
  }
}

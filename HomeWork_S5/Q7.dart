void main() {
  List<int> Scores = [10, 0, 20, 30];
  int total = 0;
  for (var i in Scores) {
    if (i != 0) {
      total = total + i;
    }
  }
  print('Total :$total');
}

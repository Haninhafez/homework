/*
 Q3
 Create a class Grade with a private field _score.
 - The setter should only accept values 0–100, 
 otherwise print 'Invalid score'.
 - Add a getter and a computed getter isPass that returns true if score ≥ 50.
 - In main(), demonstrate updating the score multiple times and printing results.
 */
void main() {
  Grade myscore = Grade();
  myscore.score = -50;
  print("Score :${myscore.score}");
  myscore.score = 100;
  print("Score :${myscore.score}");
  print("Is pass? ${myscore.isPass}");
}

class Grade {
  double? _score;
  set score(double? score) {
    if (score != null && score >= 0 && score <= 100) {
      _score = score;
    } else
      print("Invalid score");
  }

  double? get score => _score;
  bool? get isPass => _score! >= 50;
}

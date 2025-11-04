class QuestionModel {
  final String questionTitle;
  final List<dynamic> choices;
  final String correctAnswer;
  QuestionModel(this.questionTitle, this.correctAnswer, this.choices);
}

List get quiz {
  List<QuestionModel> quiz = [
    QuestionModel(
      """How would you describe 
your level of satisfaction 
with the healthcare 
system?""",

      "Strongly satisfied",
      ["Strongly satisfied", "Satisfied", "Neutral", "Not satisfied"],
    ),
  ];
  return quiz;
}

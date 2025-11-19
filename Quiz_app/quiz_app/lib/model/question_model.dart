import 'package:quiz_app/core/theme/image_app.dart';

class QuestionModel {
  final int questionNumber;
  final String questionTitle;
  final List<dynamic> choices;
  final String correctAnswer;
  final String image;
  String selectedAnswer = "";

  QuestionModel(
    this.image, {
    required this.questionNumber,
    required this.questionTitle,
    required this.correctAnswer,
    required this.choices,
  });
}

class Quiz {
  List<QuestionModel> quiz = [
    QuestionModel(
      AppImages.q1,
      questionNumber: 1,
      questionTitle: """How would you describe 
your level of satisfaction 
with the healthcare 
system?""",
      correctAnswer: "Strongly satisfied",
      choices: ["Strongly satisfied", "Satisfied", "Neutral", "Not satisfied"],
    ),

    QuestionModel(
      AppImages.q2,
      questionNumber: 2,
      questionTitle: """What vitamins do you 
take?""",
      correctAnswer: "Zinc",
      choices: ["Zinc", "Magnesium", "Vitamin B", "VitaminD"],
    ),

    QuestionModel(
      AppImages.q3,
      questionNumber: 3,
      questionTitle: """How would you describe 
your level of satisfaction 
with the healthcare 
system?""",
      correctAnswer: "Strongly satisfied",
      choices: ["Strongly satisfied", "Satisfied", "Neutral", "Not satisfied"],
    ),

    QuestionModel(
      AppImages.q4,
      questionNumber: 4,
      questionTitle: """What vitamins do you 
take?""",
      correctAnswer: "Vitamin D3",
      choices: ["Zinc", "Magnesium", "Vitamin B", "Vitamin D3"],
    ),
  ];
  List<QuestionModel> get questionQuiz => quiz;

  void updateSelectadeAnswer(int index, String answer) {
    quiz[index].selectedAnswer = answer;
  }

  int numOfCorrectAnswer() {
    return quiz.where((question) {
      return question.correctAnswer == question.selectedAnswer;
    }).length;
  }

  int resultOfAnswers() {
    return numOfCorrectAnswer() * 10;
  }
}

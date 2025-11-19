import 'package:flutter/material.dart';
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

  Color colorOption(int index, QuestionModel questionModel) {
    final correct = questionModel.correctAnswer;
    final selected = questionModel.selectedAnswer;
    final choice = questionModel.choices[index];

    if (selected == correct) {
      if (choice == correct) return Colors.green;
      return Colors.white;
    }

    if (choice == correct) return Colors.green;
    if (choice == selected) return Colors.red.shade400;

    return Colors.white;
  }
}

class Quiz {
  List<QuestionModel> quiz = [
    QuestionModel(
      AppImages.q1,
      questionNumber: 1,
      questionTitle: """How often do you exercise 
during a typical week?""",
      correctAnswer: "3–5 times",
      choices: ["Daily", "3–5 times", "1–2 times", "Rarely"],
    ),

    QuestionModel(
      AppImages.q2,
      questionNumber: 2,
      questionTitle: """Which of these habits 
best describes your 
morning routine?""",
      correctAnswer: "Healthy breakfast",
      choices: [
        "Skip breakfast",
        "Healthy breakfast",
        "Coffee only",
        "Water only",
      ],
    ),

    QuestionModel(
      AppImages.q3,
      questionNumber: 3,
      questionTitle: """How would you rate 
your overall sleep 
quality?""",
      correctAnswer: "Good",
      choices: ["Excellent", "Good", "Average", "Poor"],
    ),

    QuestionModel(
      AppImages.q4,
      questionNumber: 4,
      questionTitle: """Which type of diet do 
you follow the most?""",
      correctAnswer: "Balanced diet",
      choices: ["Keto", "Vegetarian", "Balanced diet", "High-protein"],
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

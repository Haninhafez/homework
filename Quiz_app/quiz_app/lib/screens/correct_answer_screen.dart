import 'package:flutter/material.dart';
import 'package:quiz_app/core/theme/colors_app.dart';
import 'package:quiz_app/core/theme/image_app.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/widgets/correctAnswers/list_questions_answer.dart';
import 'package:quiz_app/widgets/list_questions.dart';

class CorrectAnswerScreen extends StatefulWidget {
  final Quiz quizManger;
  const CorrectAnswerScreen({super.key, required this.quizManger});

  @override
  State<CorrectAnswerScreen> createState() => _CorrectAnswerScreenState();
}

class _CorrectAnswerScreenState extends State<CorrectAnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: ColorsApp.mainBackgroundGradient,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
            ),
            Image.asset(AppImages.gradinet),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 5),
              child: ListQuestionsAnswers(quiz: widget.quizManger),
            ),
          ],
        ),
      ),
    );
  }
}

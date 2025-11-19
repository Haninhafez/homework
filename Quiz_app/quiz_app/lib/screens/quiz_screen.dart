import 'package:flutter/material.dart';
import 'package:quiz_app/core/theme/colors_app.dart';
import 'package:quiz_app/core/theme/image_app.dart';

import 'package:quiz_app/model/question_model.dart';

import 'package:quiz_app/widgets/list_questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  Quiz quiz = Quiz();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: ColorsApp.mainBackgroundGradient,

        child: Stack(
          children: [
            Image.asset(AppImages.gradinet),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 5),
              child: ListQuestions(quiz: quiz),
            ),
          ],
        ),
      ),
    );
  }
}

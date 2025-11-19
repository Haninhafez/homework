import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/core/theme/colors_app.dart';
import 'package:quiz_app/core/theme/typography.dart';
import 'package:quiz_app/model/question_model.dart';

class CustomPersentageIndecator extends StatelessWidget {
  const CustomPersentageIndecator({super.key, required this.quizManger});

  final Quiz quizManger;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: CircularPercentIndicator(
        radius: 100.0,
        animation: true,
        animationDuration: 1200,
        lineWidth: 15.0,
        percent: quizManger.numOfCorrectAnswer() / quizManger.quiz.length,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${((quizManger.numOfCorrectAnswer() / quizManger.quiz.length) * 100).toStringAsFixed(0)} %",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Text(
              "${quizManger.numOfCorrectAnswer().toString()}\\${quizManger.questionQuiz.length}",
              style: AppTypography.h1.copyWith(color: Colors.black),
            ),
          ],
        ),
        circularStrokeCap: CircularStrokeCap.butt,
        backgroundColor: ColorsApp.secondaryVoilet,
        progressColor: ColorsApp.maineViolet,
      ),
    );
  }
}

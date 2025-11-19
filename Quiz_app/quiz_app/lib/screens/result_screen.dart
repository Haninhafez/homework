import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';
import 'package:quiz_app/core/theme/colors_app.dart';
import 'package:quiz_app/core/theme/image_app.dart';
import 'package:quiz_app/core/theme/typography.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/screens/correct_answer_screen.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/widgets/custom_buttons..dart';
import 'package:quiz_app/widgets/custom_persentage.dart';

class ResultScreen extends StatelessWidget {
  final Quiz quizManger;
  const ResultScreen({super.key, required this.quizManger});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,

        decoration: ColorsApp.mainBackgroundGradient,
        child: SafeArea(
          child: Stack(
            children: [
              Image.asset(AppImages.gradinet),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 50,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  spacing: 20,

                  children: [
                    Text("Quiz Result", style: AppTypography.h1),

                    CustomPersentageIndecator(quizManger: quizManger),
                    CustomButton(buttonName: "Home Page", goTo: HomeScreen()),

                    CustomButton(
                      buttonName: "Show Correct Answer",
                      goTo: CorrectAnswerScreen(quizManger: quizManger),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/core/theme/custom_text.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/widgets/choice_card.dart';
import 'package:quiz_app/widgets/custom_background.dart';
import 'package:quiz_app/widgets/list_choices.dart';
import 'package:quiz_app/widgets/question_nubmer.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List quizlist = quiz;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackground(),
          Positioned(
            left: 15,
            top: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 10,
              children: [
                QuestionNubmer(number: 1),
                CustomText(text: quiz[0].questionTitle),
              ],
            ),
          ),

          Positioned(
            bottom: 5,
            left: 10,
            right: 10,
            child: ListChoices(quiz: quiz[0].choices),
          ),
        ],
        
      ),
      backgroundColor: ,
    );
  }
}

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:quiz_app/core/theme/typography.dart';

import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/widgets/contorle_buttons.dart';
import 'package:quiz_app/widgets/list_choices.dart';
import 'package:quiz_app/widgets/question_nubmer.dart';

class CurrentQuestion extends StatefulWidget {
  const CurrentQuestion({
    super.key,

    required this.questionModel,
    required this.pageController,
    required this.quizManger,
  });

  final QuestionModel questionModel;
  final Quiz quizManger;
  final PageController pageController;

  @override
  State<CurrentQuestion> createState() => _CurrentQuestionState();
}

class _CurrentQuestionState extends State<CurrentQuestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          SizedBox(height: 40),
          QuestionNubmer(
            number: widget.questionModel.questionNumber,
            image: widget.questionModel.image,
          ),

          Text(widget.questionModel.questionTitle, style: AppTypography.h1),

          Expanded(
            child: ListChoices(
              quizManger: widget.quizManger,

              onSelected: (String selected) {
                setState(() {});
              },
              questionIndex: widget.quizManger.quiz.indexOf(
                widget.questionModel,
              ),
              questionModel: widget.questionModel,
            ),
          ),

          ContorleButtons(
            quiz: widget.quizManger,
            pageController: widget.pageController,
          ),
        ],
      ),
    );
  }
}

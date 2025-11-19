import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/widgets/correctAnswers/option_result.dart';
import 'package:quiz_app/widgets/option_item.dart';

class ListChoiceAnswer extends StatefulWidget {
  final int questionIndex;
  final Quiz quizManger;
  final QuestionModel questionModel;

  const ListChoiceAnswer({
    super.key,
    required this.quizManger,

    required this.questionIndex,
    required this.questionModel,
  });

  @override
  State<ListChoiceAnswer> createState() => _ListChoiceAnswerState();
}

class _ListChoiceAnswerState extends State<ListChoiceAnswer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return OptionResult(
          choice: widget.questionModel.choices[index],
          quizManger: widget.quizManger,
          index: index,
          colorOption: widget.questionModel.colorOption(
            index,
            widget.questionModel,
          ),
        );
      },
      itemCount: widget.questionModel.choices.length,
    );
  }
}

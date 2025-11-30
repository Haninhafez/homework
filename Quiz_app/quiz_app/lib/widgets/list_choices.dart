import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/widgets/option_item.dart';

class ListChoices extends StatefulWidget {
  final int questionIndex;
  final Quiz quizManger;
  final QuestionModel questionModel;

  const ListChoices({
    super.key,
    required this.quizManger,

    required this.questionIndex,
    required this.questionModel,
  });

  @override
  State<ListChoices> createState() => _ListChoicesState();
}

class _ListChoicesState extends State<ListChoices>
    with AutomaticKeepAliveClientMixin {
  int selected = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            selected = index;
            setState(() {
              String selectedChoice = widget.questionModel.choices[index];
              widget.quizManger.updateSelectadeAnswer(
                widget.questionIndex,
                selectedChoice,
              );
            });
          },
          child: OptionItem(
            choice: widget.questionModel.choices[index],
            isTapped: selected == index,
          ),
        );
      },
      itemCount: widget.questionModel.choices.length,
    );
  }

  @override
  bool get wantKeepAlive => true;
}

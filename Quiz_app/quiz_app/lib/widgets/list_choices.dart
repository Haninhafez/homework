import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/widgets/choice_card.dart';

class ListChoices extends StatelessWidget {
  final List<dynamic> quiz;
  const ListChoices({super.key, required this.quiz});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: quiz.map((choice) => ChoiceCard(choice: choice)).toList(),
    );
  }
}

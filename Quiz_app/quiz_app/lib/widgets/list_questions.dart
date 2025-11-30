import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/widgets/current_question.dart';

class ListQuestions extends StatefulWidget {
  final Quiz quiz;

  ListQuestions({super.key, required this.quiz});

  @override
  State<ListQuestions> createState() => _ListQuestionsState();
}

class _ListQuestionsState extends State<ListQuestions> {
  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) {
        return CurrentQuestion(
          questionModel: widget.quiz.quiz[index],
          pageController: pageController,
          quizManger: widget.quiz,
        );
      },
      itemCount: widget.quiz.quiz.length,
    );
  }
}

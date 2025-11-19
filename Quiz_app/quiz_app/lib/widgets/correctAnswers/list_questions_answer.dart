import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/widgets/correctAnswers/current_quetions_answer.dart';
import 'package:quiz_app/widgets/current_question.dart';

class ListQuestionsAnswers extends StatefulWidget {
  final Quiz quiz;

  ListQuestionsAnswers({super.key, required this.quiz});

  @override
  State<ListQuestionsAnswers> createState() => _ListQuestionsAnswersState();
}

class _ListQuestionsAnswersState extends State<ListQuestionsAnswers> {
  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CurrentQuestionAnswer(
          questionModel: widget.quiz.quiz[index],
          pageController: pageController,
          quizManger: widget.quiz,
        );
      },
      itemCount: widget.quiz.quiz.length,
    );
  }
}

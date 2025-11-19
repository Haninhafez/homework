import 'package:flutter/material.dart';
import 'package:quiz_app/core/theme/colors_app.dart';
import 'package:quiz_app/core/theme/typography.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/screens/result_screen.dart';

class ContorleButtons extends StatefulWidget {
  final Quiz quiz;
  final PageController pageController;

  const ContorleButtons({
    super.key,
    required this.quiz,
    required this.pageController,
  });

  @override
  State<ContorleButtons> createState() => _ContorleButtonsState();
}

class _ContorleButtonsState extends State<ContorleButtons> {
  @override
  late VoidCallback listener;

  @override
  void initState() {
    super.initState();

    listener = () {
      if (mounted) setState(() {});
    };

    widget.pageController.addListener(listener);
  }

  @override
  void dispose() {
    widget.pageController.removeListener(listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentPage = widget.pageController.page ?? 0;
    final lastPage = widget.quiz.quiz.length - 1;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            widget.pageController.previousPage(
              duration: Duration(microseconds: 25),
              curve: Curves.decelerate,
            );
          },
          child: currentPage == 0
              ? SizedBox.shrink()
              : Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  decoration: BoxDecoration(
                    border: BoxBorder.all(color: Color(0xff8E84FF), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(width: 15),
                      Text("Back", style: AppTypography.h4),
                    ],
                  ),
                ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            currentPage == lastPage
                ? Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ResultScreen(quizManger: widget.quiz),
                    ),
                  )
                : widget.pageController.nextPage(
                    duration: Duration(microseconds: 25),
                    curve: Curves.decelerate,
                  );
          },
          child: currentPage < lastPage ? NextButton() : ResultButton(),
        ),
      ],
    );
  }
}

class ResultButton extends StatelessWidget {
  const ResultButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: ColorsApp.buttonDecoration,
      child: Center(child: Text("Result", style: AppTypography.h4)),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: ColorsApp.buttonDecoration,
      child: Row(
        children: [
          SizedBox(width: 15),
          Text("Next", style: AppTypography.h4),
          SizedBox(width: 15),
          Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
        ],
      ),
    );
  }
}

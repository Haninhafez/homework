import 'package:flutter/material.dart';
import 'package:quiz_app/core/theme/colors_app.dart';
import 'package:quiz_app/core/theme/image_app.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/widgets/list_questions.dart';

class CorrectAnswerScreen extends StatefulWidget {
  final Quiz quizManger;
  const CorrectAnswerScreen({super.key, required this.quizManger});

  @override
  State<CorrectAnswerScreen> createState() => _CorrectAnswerScreenState();
}

class _CorrectAnswerScreenState extends State<CorrectAnswerScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: ColorsApp.mainBackgroundGradient,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
            ),
            Image.asset(AppImages.gradinet),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

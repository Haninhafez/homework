import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/core/theme/colors_app.dart';
import 'package:quiz_app/core/theme/image_app.dart';
import 'package:quiz_app/core/theme/typography.dart';
import 'package:quiz_app/model/question_model.dart';

class OptionResult extends StatelessWidget {
  final String choice;
  final Quiz quizManger;
  final int index;
  final Color colorOption;

  const OptionResult({
    super.key,
    required this.choice,
    required this.quizManger,
    required this.index,
    required this.colorOption,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: colorOption,

        borderRadius: BorderRadius.circular(8),
      ),

      child: ListTile(
        title: Text(
          choice,
          style: AppTypography.h2.copyWith(color: ColorsApp.maineViolet),
        ),

        leading: Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: colorOption,
            shape: BoxShape.circle,
            border: BoxBorder.all(color: ColorsApp.maineViolet),
          ),
          child: Center(
            child: SvgPicture.asset(AppImages.checkIcon, height: 15, width: 8),
          ),
        ),
      ),
    );
  }
}

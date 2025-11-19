import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/core/theme/colors_app.dart';
import 'package:quiz_app/core/theme/image_app.dart';
import 'package:quiz_app/core/theme/typography.dart';

class SelectedItem extends StatelessWidget {
  final String choice;

  const SelectedItem({super.key, required this.choice});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Color(0xff8E84FF),
          gradient: ColorsApp.secondryGradient,
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
              color: ColorsApp.maineViolet,
              shape: BoxShape.circle,
              border: BoxBorder.all(color: ColorsApp.maineViolet),
            ),
            child: Center(
              child: SvgPicture.asset(
                AppImages.checkIcon,
                height: 15,
                width: 8,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

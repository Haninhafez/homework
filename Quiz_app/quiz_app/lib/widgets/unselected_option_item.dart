import 'package:flutter/material.dart';
import 'package:quiz_app/core/theme/colors_app.dart';
import 'package:quiz_app/core/theme/typography.dart';

class UnselectedOptionItem extends StatelessWidget {
  final String choice;
  const UnselectedOptionItem({super.key, required this.choice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: null,
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
            color: Colors.white,
            shape: BoxShape.circle,
            border: BoxBorder.all(color: ColorsApp.maineViolet),
          ),
          child: null,
        ),
      ),
    );
  }
}

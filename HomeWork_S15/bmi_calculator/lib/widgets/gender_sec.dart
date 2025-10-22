import 'package:bmi_calculator/core/app_color.dart';
import 'package:bmi_calculator/widgets/gender_card.dart';
import 'package:flutter/material.dart';

class GenderSec extends StatefulWidget {
  const GenderSec({super.key});

  @override
  State<GenderSec> createState() => _GenderSecState();
}

class _GenderSecState extends State<GenderSec> {
  bool isMeal = false;
  bool isFemeal = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isMeal = true;
                isFemeal = false;
              });
            },
            child: GenderCard(
              genderIcon: (Icons.male),
              genderText: 'MALE',
              cardColor: isMeal
                  ? AppColor.selectedColor
                  : AppColor.sectionColor,
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isFemeal = true;
                isMeal = false;
              });
            },
            child: GenderCard(
              genderIcon: Icons.female,
              genderText: 'FEMALE',
              cardColor: isFemeal
                  ? AppColor.selectedColor
                  : AppColor.sectionColor,
            ),
          ),
        ),
      ],
    );
  }
}

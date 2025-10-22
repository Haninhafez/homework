import 'package:bmi_calculator/core/app_color.dart';
import 'package:bmi_calculator/screens/widgets/gender_card.dart';
import 'package:flutter/material.dart';

class GenderSec extends StatefulWidget {
  final Function(String) onGenderSelected;
  GenderSec({super.key, required this.onGenderSelected});

  @override
  State<GenderSec> createState() => _GenderSecState();
}

class _GenderSecState extends State<GenderSec> {
  bool isMale = false;
  bool isfemale = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isMale = true;
                isfemale = false;
                widget.onGenderSelected("Male");
              });
            },
            child: GenderCard(
              genderIcon: (Icons.male),
              genderText: 'MALE',
              cardColor: isMale
                  ? AppColor.selectedColor
                  : AppColor.sectionColor,
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isfemale = true;
                isMale = false;
                widget.onGenderSelected("Female");
              });
            },
            child: GenderCard(
              genderIcon: Icons.female,
              genderText: 'FEMALE',
              cardColor: isfemale
                  ? AppColor.selectedColor
                  : AppColor.sectionColor,
            ),
          ),
        ),
      ],
    );
  }
}

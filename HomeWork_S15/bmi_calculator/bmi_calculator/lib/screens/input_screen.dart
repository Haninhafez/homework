import 'package:bmi_calculator/core/app_color.dart';
import 'package:bmi_calculator/logic/bmi_calculate.dart';
import 'package:bmi_calculator/screens/widgets/action_button.dart';
import 'package:bmi_calculator/screens/widgets/gender_sec.dart';
import 'package:bmi_calculator/screens/widgets/height_sce.dart';
import 'package:bmi_calculator/screens/widgets/weight_age_sec.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String? gender;
  double? height;
  double? weight;
  int? age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            spacing: 30,
            children: [
              // SizedBox(height: 10),
              Text(
                "BMI  CALCULATOR",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFFFEFC),
                ),
              ),
              Expanded(
                child: GenderSec(
                  onGenderSelected: (String value) => gender = value,
                ),
              ),
              Expanded(
                child: HeightSce(
                  onHeightChanged: (double value) => setState(() {
                    height = value;
                  }),
                ),
              ),
              Expanded(
                child: WeightAgeSec(
                  weightOnChanged: (double value) {
                    setState(() {
                      weight = value;
                    });
                  },
                  ageOnchanged: (int value) {
                    setState(() {
                      age = value;
                    });
                  },
                ),
              ),
              ActionButton(
                info: InfoToCalculate(
                  gender: gender ?? "",
                  height: height ?? 50,
                  weigth: weight ?? 15,
                  age: age ?? 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

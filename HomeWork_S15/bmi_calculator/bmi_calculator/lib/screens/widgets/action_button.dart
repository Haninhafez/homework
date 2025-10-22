import 'package:bmi_calculator/core/custom_text_style.dart';
import 'package:bmi_calculator/logic/bmi_calculate.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActionButton extends StatelessWidget {
  final InfoToCalculate info;
  const ActionButton({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) =>
                ResultScreen(bmiCalculate: BmiCalculate(info)),
          ),
        );
      },

      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        color: Color(0xffED0D54),
        child: Text("CALCULATE", style: CustomTextStyle.infoTextStyle),
      ),
    );
  }
}

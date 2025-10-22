import 'package:bmi_calculator/widgets/height_sce.dart';

import 'package:bmi_calculator/widgets/gender_sec.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff04061D),

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 30,
              children: [
                Text(
                  "BMI  CALCULATOR",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFEFC),
                  ),
                ),
                GenderSec(),
                HeightSce(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

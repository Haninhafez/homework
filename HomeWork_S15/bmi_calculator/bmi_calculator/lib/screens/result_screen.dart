import 'package:bmi_calculator/core/app_color.dart';
import 'package:bmi_calculator/core/custom_text_style.dart';
import 'package:bmi_calculator/logic/bmi_calculate.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final BmiCalculate bmiCalculate;
  const ResultScreen({super.key, required this.bmiCalculate});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    double result = widget.bmiCalculate.bmiCalculation;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        backgroundColor: AppColor.backgroundColor,
        title: Text(
          "Result",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w400,
            color: Color(0xffFFFEFC),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  result.toStringAsFixed(2),
                  style: CustomTextStyle.infoTextStyle.copyWith(fontSize: 55),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

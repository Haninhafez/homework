import 'package:flutter/material.dart';

import 'package:quiz_app/main.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Widget goTo;
  const CustomButton({super.key, required this.buttonName, required this.goTo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => goTo),
      ),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Color(0xff2B0063),
              fontFamily: "gilroy",
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

class StartingButton extends StatelessWidget {
  const StartingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => QuizScreen()),
      ),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            "Start Quiz",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Color(0xff2B0063),
            ),
          ),
        ),
      ),
    );
  }
}

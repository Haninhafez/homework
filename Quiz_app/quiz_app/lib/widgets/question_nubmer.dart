import 'package:flutter/material.dart';

class QuestionNubmer extends StatelessWidget {
  final int number;
  const QuestionNubmer({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: Color(0xff8E84FF),
        borderRadius: BorderRadius.circular(100),
        border: BoxBorder.all(
          color: Color(0xffB8B2FF),
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 5,
        children: [
          Icon(Icons.circle_outlined),
          Text(
            "Question ${number.toString()}",
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

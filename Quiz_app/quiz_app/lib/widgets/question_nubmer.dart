import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuestionNubmer extends StatelessWidget {
  final int number;
  final String image;
  const QuestionNubmer({super.key, required this.number, required this.image});

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
          SvgPicture.asset(image),
          Text(
            "Question ${number.toString()}",
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

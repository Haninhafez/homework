import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_model.dart';

class ChoiceCard extends StatefulWidget {
  final String choice;

  ChoiceCard({super.key, required this.choice});

  @override
  State<ChoiceCard> createState() => _ChoiceCardState();
}

class _ChoiceCardState extends State<ChoiceCard> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: Card(
        color: !isTapped ? Colors.white : Color(0xff8E84FF),
        shadowColor: Colors.white,
        child: ListTile(
          title: Text(
            widget.choice,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),

          leading: Checkbox(
            activeColor: Color(0xff006C60),

            value: isTapped,
            onChanged: (value) {
              setState(() {
                isTapped = !isTapped;
              });
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Partone extends StatelessWidget {
  const Partone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(color: Colors.lightBlue[200], height: 150),
        SizedBox(height: 15),
        Container(
          color: Colors.grey.shade300,
          height: 25,
          child: Row(
            children: [
              SizedBox(width: 50),
              Container(width: 15, height: 25, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}

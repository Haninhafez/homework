import 'package:flutter/material.dart';

class Partfour extends StatelessWidget {
  const Partfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        children: [
          Expanded(child: Container(color: Colors.teal[200])),
          SizedBox(width: 20),
          Expanded(child: Container(color: Colors.cyan)),
        ],
      ),
    );
  }
}

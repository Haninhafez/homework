import 'package:flutter/material.dart';

class Partthree extends StatelessWidget {
  const Partthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(148, 233, 128, 252),
      height: 120,
      child: Row(
        children: [
          Container(width: 100, color: Colors.purpleAccent[100]),
          SizedBox(width: 20),
          Column(
            children: [
              Container(color: Colors.purple, height: 55, width: 100),
              SizedBox(height: 10),
              Container(color: Colors.purple, height: 55, width: 100),
            ],
          ),
          SizedBox(width: 10),
          Container(width: 80, color: Colors.purple[400]),
        ],
      ),
    );
  }
}

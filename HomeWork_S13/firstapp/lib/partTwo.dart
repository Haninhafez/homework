import 'package:flutter/material.dart';

class Parttwo extends StatelessWidget {
  const Parttwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(144, 210, 247, 211),
            child: Column(
              children: [
                Container(color: Colors.green[200], height: 50, width: 200),
                Center(child: SizedBox(height: 10)),
                Container(color: Colors.green[200], height: 50, width: 200),
              ],
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 249, 223, 145),
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.amber)),
                  Center(child: SizedBox(width: 10, height: 50)),
                  Expanded(child: Container(color: Colors.amber)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

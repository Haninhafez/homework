import 'package:flutter/material.dart';

class QuickstateLabbel extends StatelessWidget {
  final IconData iconState;
  final Color iconStateColor;
  final String numberState;
  final String nameState;
  const QuickstateLabbel({
    super.key,
    required this.iconState,
    required this.iconStateColor,
    required this.numberState,
    required this.nameState,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(198, 158, 158, 158),
              blurRadius: 1,
              offset: Offset(0, 2),
              spreadRadius: .4,
            ),
          ],
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(iconState, color: iconStateColor, size: 40),
            Text(
              numberState,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(nameState, style: TextStyle(color: Colors.grey, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

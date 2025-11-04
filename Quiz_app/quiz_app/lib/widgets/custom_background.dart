import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xffA838FF),
            blurRadius: 100,
            spreadRadius: 150,
            offset: const Offset(0, 30),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color.fromARGB(221, 90, 63, 141),
              Color(0xFF141236),
              Color(0xFF3A276E),

              Color.fromARGB(231, 20, 18, 54),
              Color.fromARGB(231, 20, 18, 54),
              Color.fromARGB(231, 20, 18, 54),

              Color.fromARGB(172, 20, 18, 54),
            ],

            radius: 7,
          ),
        ),
      ),
    );
  }
}

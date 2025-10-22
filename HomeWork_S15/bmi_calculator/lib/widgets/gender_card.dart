import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;
  final Color cardColor;
  const GenderCard({
    super.key,
    required this.genderIcon,
    required this.genderText,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(genderIcon, color: Colors.white, size: 100),
          Text(genderText, style: TextStyle(color: Colors.grey, fontSize: 25)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quickstart_ui/widget/featuresCard.dart';

class Featureslist extends StatelessWidget {
  const Featureslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Featurescard(
          icon: "image/icons8-performance-100.png",
          title: "Fast Performace",
          subtitle: "Lightning fast app performace",
        ),
        Featurescard(
          icon: "image/icons8-secure-40.png",
          title: "Secure",
          subtitle: "Your data is safe with us",
        ),
        Featurescard(
          icon: "image/icons8-artist-palette-48.png",
          title: "Beautiful UI",
          subtitle: "Modern and clean design",
        ),
      ],
    );
  }
}

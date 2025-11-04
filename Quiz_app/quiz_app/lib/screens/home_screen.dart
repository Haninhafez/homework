import 'package:flutter/material.dart';
import 'package:quiz_app/core/theme/custom_text.dart';
import 'package:quiz_app/widgets/custom_background.dart';
import 'package:quiz_app/widgets/starting_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackground(),
          Positioned(
            left: 10,
            top: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Text(
                  "Good morning,",
                  style: TextStyle(
                    color: Colors.grey[50],
                    fontSize: 27,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                CustomText(text: "New topic is waiting"),
              ],
            ),
          ),

          Positioned(bottom: 50, left: 10, right: 10, child: StartingButton()),
        ],
      ),
    );
  }
}

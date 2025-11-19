import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/core/theme/colors_app.dart';

import 'package:quiz_app/core/theme/image_app.dart';
import 'package:quiz_app/core/theme/typography.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

import 'package:quiz_app/widgets/custom_buttons..dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: ColorsApp.mainBackgroundGradient,
        child: Stack(
          children: [
            Image(image: AssetImage(AppImages.gradinet)),
            Positioned(
              left: 10,
              top: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  Text("Good morning,", style: AppTypography.h3),
                  Text("New topic is waiting", style: AppTypography.h1),
                ],
              ),
            ),
            Center(child: Image.asset(AppImages.homeImage)),

            Positioned(
              bottom: 50,
              left: 10,
              right: 10,
              child: CustomButton(buttonName: 'Start Quiz', goTo: QuizScreen()),
            ),
          ],
        ),
      ),
    );
  }
}

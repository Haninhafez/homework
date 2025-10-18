import 'package:firstapp/partOne.dart';
import 'package:firstapp/partThree.dart';
import 'package:firstapp/partTwo.dart';
import 'package:firstapp/partfour.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            spacing: 20,
            children: [
              Partone(),

              Divider(height: 2, color: Colors.grey[400]),

              Parttwo(),

              Partthree(),

              Partfour(),

              Container(height: 50, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quickstart_ui/actionButtonSection.dart';
import 'package:quickstart_ui/featuresList.dart';
import 'package:quickstart_ui/hello_labbel.dart';
import 'package:quickstart_ui/quickstate.dart';
import 'package:quickstart_ui/quickstate_labbel.dart';

void main() {
  runApp(QuickStateUI());
}

class QuickStateUI extends StatelessWidget {
  const QuickStateUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                HelloLabbel(),
                Quickstate(),
                Text(
                  "Features",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Featureslist(),
                Spacer(),
                Actionbuttonsection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

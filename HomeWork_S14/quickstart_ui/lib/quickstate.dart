import 'package:flutter/material.dart';
import 'package:quickstart_ui/quickstate_labbel.dart';

class Quickstate extends StatelessWidget {
  const Quickstate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Quick Stats",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),

        Row(
          spacing: 10,

          children: [
            QuickstateLabbel(
              iconState: Icons.people,
              numberState: "1,234",
              nameState: "User",
              iconStateColor: Colors.deepPurple,
            ),
            QuickstateLabbel(
              iconState: Icons.star,
              numberState: "4.8",
              nameState: "Rating",
              iconStateColor: Colors.orangeAccent,
            ),
            QuickstateLabbel(
              iconState: Icons.trending_up,
              numberState: "98%",
              nameState: "Success",
              iconStateColor: Colors.lightBlue,
            ),
          ],
        ),
      ],
    );
  }
}

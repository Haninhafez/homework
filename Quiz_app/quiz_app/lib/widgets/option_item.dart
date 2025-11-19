import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/selected_item.dart';
import 'package:quiz_app/widgets/unselected_option_item.dart';

class OptionItem extends StatelessWidget {
  final String choice;
  OptionItem({super.key, required this.choice, required this.isTapped});

  final bool isTapped;

  @override
  Widget build(BuildContext context) {
    return isTapped
        ? SelectedItem(choice: choice)
        : UnselectedOptionItem(choice: choice);
  }
}

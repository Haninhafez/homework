import 'package:bmi_calculator/screens/widgets/counter_card.dart';
import 'package:flutter/widgets.dart';

class WeightAgeSec extends StatefulWidget {
  final Function(double) weightOnChanged;
  final Function(int) ageOnchanged;
  WeightAgeSec({
    super.key,
    required this.weightOnChanged,
    required this.ageOnchanged,
  });

  @override
  State<WeightAgeSec> createState() => _WeightAgeSecState();
}

class _WeightAgeSecState extends State<WeightAgeSec> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        Expanded(
          child: CounterCard(
            nameOfCounterCard: "WEIGHT",
            valueOnChanged: (double value) {
              setState(() {
                widget.weightOnChanged(value);
              });
            },
          ),
        ),
        Expanded(
          child: CounterCard(
            nameOfCounterCard: "AGE",
            valueOnChanged: (double value) {
              setState(() {
                widget.ageOnchanged(value.toInt());
              });
            },
          ),
        ),
      ],
    );
  }
}

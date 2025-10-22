import 'package:bmi_calculator/core/app_color.dart';
import 'package:bmi_calculator/core/custom_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  final String nameOfCounterCard;
  final Function(double) valueOnChanged;
  const CounterCard({
    super.key,
    required this.nameOfCounterCard,
    required this.valueOnChanged,
  });

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int numberOfCounter = 0;
  void increment() {
    numberOfCounter = numberOfCounter + 10;
  }

  void decrement() {
    numberOfCounter = numberOfCounter - 10;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      decoration: BoxDecoration(
        color: AppColor.sectionColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 8),
          Text(widget.nameOfCounterCard, style: CustomTextStyle.mainTextStyle),
          Text(
            numberOfCounter.toString(),
            style: CustomTextStyle.infoTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Color(0xff4B4E5F),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      increment();
                      widget.valueOnChanged(numberOfCounter.toDouble());
                    });
                  },
                  icon: Icon(
                    CupertinoIcons.add,
                    color: Colors.white,
                    size: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 28,
                backgroundColor: Color(0xff4B4E5F),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (numberOfCounter <= 0) {
                        numberOfCounter = 0;
                      } else {
                        decrement();
                        widget.valueOnChanged(numberOfCounter.toDouble());
                      }
                    });
                  },
                  icon: Icon(
                    CupertinoIcons.minus,
                    color: Colors.white,
                    size: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

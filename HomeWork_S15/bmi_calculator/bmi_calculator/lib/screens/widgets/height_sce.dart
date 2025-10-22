import 'package:bmi_calculator/core/app_color.dart';
import 'package:bmi_calculator/core/custom_text_style.dart';
import 'package:flutter/material.dart';

class HeightSce extends StatefulWidget {
  final Function(double) onHeightChanged;
  const HeightSce({super.key, required this.onHeightChanged});

  @override
  State<HeightSce> createState() => _HeightSceState();
}

class _HeightSceState extends State<HeightSce> {
  double height = 183;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 170,
      decoration: BoxDecoration(
        color: AppColor.sectionColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 8),
          Text("HEIGHT", style: CustomTextStyle.mainTextStyle),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                height.toStringAsFixed(0),
                style: CustomTextStyle.infoTextStyle,
              ),
              Column(
                children: [
                  Text(
                    "cm",
                    style: CustomTextStyle.mainTextStyle.copyWith(fontSize: 20),
                  ),
                  SizedBox(height: 7),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Color(0xff8d8e98),
                activeTrackColor: Colors.white,
                thumbColor: Color(0xffeb1555),
                overlayColor: Color(0x29eb1555),

                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                trackHeight: 1,
              ),
              child: Slider(
                value: height,
                min: 10,
                max: 270,
                onChanged: (double value) {
                  setState(() {
                    height = value;
                    widget.onHeightChanged(value);
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

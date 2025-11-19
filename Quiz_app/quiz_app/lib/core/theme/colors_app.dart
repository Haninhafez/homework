import 'dart:ui';

import 'package:flutter/material.dart';

class ColorsApp {
  static final Color maineViolet = Color(0xff2B0063);
  static final Color secondaryVoilet = Color(0xff8E84FF);
  static final Color outlineVoilet = Color(0xffB8B2FF);
  static final Color backGrad = Color(0xffA838FF);
  static final Color casperViolet = Color(0xff2B0063).withOpacity(30);
  static BoxDecoration mainBackgroundGradient = BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xff060B26), Color(0xff1A1F37)],
      begin: AlignmentGeometry.topLeft,
      end: AlignmentGeometry.bottomRight,
    ),
  );
  static final LinearGradient secondryGradient = LinearGradient(
    colors: [Color(0xffB8B2FF), Color(0xffC6C2F8)],
    begin: AlignmentGeometry.bottomLeft,
    end: AlignmentGeometry.topRight,
  );
  static final BoxDecoration buttonDecoration = BoxDecoration(
    border: BoxBorder.all(color: Color(0xff8E84FF), width: 2),
    borderRadius: BorderRadius.circular(10),
    color: ColorsApp.secondaryVoilet,
  );
}

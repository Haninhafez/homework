import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppTypography {
  static const double _letterSpacing = 0.0;
  static const String _fontFamily = 'gilory';

  static final TextStyle h1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 32.0,

    letterSpacing: _letterSpacing,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static final TextStyle h2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 25.0,

    letterSpacing: _letterSpacing,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static final TextStyle h3 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 22.0,

    letterSpacing: _letterSpacing,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static final TextStyle h4 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20.0,

    letterSpacing: _letterSpacing,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
}

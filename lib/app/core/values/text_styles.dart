import 'package:flutter/material.dart';

class TextStyles {
  static const String OPEN_SANS_FONT_FAMILY = 'OpenSans';
  static const FontWeight OPEN_SANS_REGULAR_WEIGHT = FontWeight.w400;
  static const FontWeight OPEN_SANS_SEMI_BOLD_WEIGHT = FontWeight.w600;
  static const FontWeight OPEN_SANS_BOLD_WEIGHT = FontWeight.w700;
  // White Text
  static const verySmallTextWhite = TextStyle(
    fontSize: 10,
    fontWeight: OPEN_SANS_REGULAR_WEIGHT,
    color: Colors.white,
    fontFamily: OPEN_SANS_FONT_FAMILY,
  );

  static const smallTextWhite = TextStyle(
    fontSize: 12,
    fontWeight: OPEN_SANS_REGULAR_WEIGHT,
    color: Colors.white,
    fontFamily: OPEN_SANS_FONT_FAMILY,
  );

  static const mediumTextWhite = TextStyle(
      color: Colors.white,
      fontWeight: OPEN_SANS_REGULAR_WEIGHT,
      fontFamily: OPEN_SANS_FONT_FAMILY,
      fontSize: 14);

  static const bigTextWhite = TextStyle(
      color: Colors.white,
      fontWeight: OPEN_SANS_REGULAR_WEIGHT,
      fontFamily: OPEN_SANS_FONT_FAMILY,
      fontSize: 16);

  static const veryBigTextWhite = TextStyle(
      color: Colors.white,
      fontWeight: OPEN_SANS_REGULAR_WEIGHT,
      fontFamily: OPEN_SANS_FONT_FAMILY,
      fontSize: 22);

  static final evenBiggerTextWhite = TextStyle(
      color: Colors.white,
      fontWeight: OPEN_SANS_REGULAR_WEIGHT,
      fontFamily: OPEN_SANS_FONT_FAMILY,
      fontSize: 24);
}

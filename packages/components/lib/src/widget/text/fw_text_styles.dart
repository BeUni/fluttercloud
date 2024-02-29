import 'package:components/src/constants/string_constants.dart';
import 'package:flutter/material.dart';

class FwTextStyles {
  static TextStyle textStyle(
      {double fontSize = 12,
      Color? fontColor,
      FontWeight fontWeight = FontWeight.normal,
      String fontFamily = Constants.inter,
      double letterSpacing = 0.1,
      TextDecoration decoration = TextDecoration.none}) {
    return TextStyle(
        fontSize: fontSize,
        color: fontColor,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing,
        decoration: decoration);
  }
}

import 'package:flutter/material.dart';

class ColorUtils {
  Color primarycolor     = HexColor("#3d3f40");
  Color secondarycolor   = HexColor("#5d5e5f");
  Color darkBlackColor   = HexColor("#161819");
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
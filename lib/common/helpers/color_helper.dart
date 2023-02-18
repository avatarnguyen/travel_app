import 'package:flutter/material.dart';

class ColorUtils {
  static Color darken(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    if (hsl.lightness - amount > 0.2) {
      final hslDark =
          hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
      return hslDark.toColor();
    } else {
      return hsl.withLightness(0.2.clamp(0.0, 1.0)).toColor();
    }
  }

  static Color lighten(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);

    if ((hsl.lightness + amount) < 0.91) {
      final hslLight =
          hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
      return hslLight.toColor();
    } else {
      return hsl.withLightness(0.90.clamp(0.0, 1.0)).toColor();
    }
  }

  /// Turn Hash String Color to Color
  static Color getColorFromString(String colorString) {
    final color = colorString.replaceAll('#', '0xff');
    return Color(int.parse(color));
  }
}

const double kLighterLess = 0.16;
const double kLighter = 0.24;
const double kLighterMore = 0.60;
const double kDarkerLess = 0.16;
const double kDarker = 0.24;
const double kDarkerMore = 0.28;

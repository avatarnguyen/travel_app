import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

import '../../../../utils/named.dart';
import '../../styles.dart';

const kFontFamily = 'Inter';

class AppTypographyX extends TextStyle {
  TextStyle get primary => copyWith(color: AppColors.primary);
  TextStyle get secondary => copyWith(color: AppColors.secondary);
  TextStyle get accent => copyWith(color: AppColors.accent);
}

class AppTypographyData extends Equatable {
  const AppTypographyData({
    required this.body1,
    required this.body2,
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.headline4,
  });

  factory AppTypographyData.regular() => const AppTypographyData(
        body1: TextStyle(
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          decoration: TextDecoration.none,
        ),
        body2: TextStyle(
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 10,
          decoration: TextDecoration.none,
        ),
        headline1: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        headline2: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        headline3: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        headline4: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.none,
        ),
      );

  factory AppTypographyData.small() => const AppTypographyData(
        body1: TextStyle(
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 10,
          decoration: TextDecoration.none,
        ),
        body2: TextStyle(
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 9,
          decoration: TextDecoration.none,
        ),
        headline1: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        headline2: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        headline3: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        headline4: TextStyle(
          fontFamily: kFontFamily,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.none,
        ),
      );

  final TextStyle body1;
  final TextStyle body2;
  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle headline3;
  final TextStyle headline4;

  @override
  List<Object?> get props => [
        headline1.named('headline1'),
        headline2.named('headline2'),
        headline3.named('headline3'),
        headline4.named('headline4'),
        body1.named('body1'),
        body2.named('body2'),
      ];
}

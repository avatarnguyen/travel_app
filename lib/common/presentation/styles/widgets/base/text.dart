import 'package:flutter/widgets.dart';

import '../../styles.dart';

enum AppTextLevel {
  body1,
  body2,
  headline1,
  headline2,
  headline3,
  headline4,
}

class AppText extends StatelessWidget {
  const AppText(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.overflow,
    this.maxLines,
    this.level = AppTextLevel.body1,
  });

  const AppText.body1(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.overflow,
    this.maxLines,
  }) : level = AppTextLevel.body1;

  const AppText.paragraph2(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.overflow,
  }) : level = AppTextLevel.body2;

  const AppText.headline1(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.overflow,
  }) : level = AppTextLevel.headline1;

  const AppText.headline2(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.overflow,
  }) : level = AppTextLevel.headline2;

  const AppText.headline3(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.overflow,
  }) : level = AppTextLevel.headline3;

  const AppText.headline4(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.overflow,
  }) : level = AppTextLevel.headline4;

  final String data;
  final AppTextLevel level;
  final Color? color;
  final double? fontSize;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final defaultColor = AppColorsData.regular();
    final defaultTypo = AppTypographyData.regular();
    final color = this.color ??
        () {
          switch (level) {
            case AppTextLevel.body1:
              return defaultColor.secondary;
            case AppTextLevel.body2:
              return defaultColor.secondary;
            case AppTextLevel.headline1:
              return defaultColor.accent;
            case AppTextLevel.headline2:
              return defaultColor.accent;
            case AppTextLevel.headline3:
              return defaultColor.secondary;
            case AppTextLevel.headline4:
              return defaultColor.secondary;
          }
        }();

    final style = () {
      switch (level) {
        case AppTextLevel.body1:
          return defaultTypo.body1;
        case AppTextLevel.body2:
          return defaultTypo.body2;
        case AppTextLevel.headline1:
          return defaultTypo.headline1;
        case AppTextLevel.headline2:
          return defaultTypo.headline2;
        case AppTextLevel.headline3:
          return defaultTypo.headline3;
        case AppTextLevel.headline4:
          return defaultTypo.headline4;
      }
    }();
    return Text(
      data,
      style: style.copyWith(
        color: color,
        fontSize: fontSize,
      ),
      // softWrap: false,
      // textAlign: TextAlign.start,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.clip,
    );
  }
}

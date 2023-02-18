import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../styles.dart';

enum AppIconSize {
  s,
  m,
  l,
  xl,
}

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.data, {
    super.key,
    this.color,
    this.size = AppIconSize.m,
  });

  const AppIcon.small(
    this.data, {
    super.key,
    this.color,
  }) : size = AppIconSize.s;

  const AppIcon.semiSmall(
    this.data, {
    super.key,
    this.color,
  }) : size = AppIconSize.m;
  const AppIcon.regular(
    this.data, {
    super.key,
    this.color,
  }) : size = AppIconSize.l;

  const AppIcon.big(
    this.data, {
    super.key,
    this.color,
  }) : size = AppIconSize.xl;

  final IconData data;
  final Color? color;
  final AppIconSize size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      data,
      color: color,
      size: getIconSize,
    );
  }

  double get getIconSize {
    switch (size) {
      case AppIconSize.s:
        return Sizes.m;
      case AppIconSize.m:
        return Sizes.l;
      case AppIconSize.l:
        return Sizes.xl;
      case AppIconSize.xl:
        return Sizes.xxl;
    }
  }
}

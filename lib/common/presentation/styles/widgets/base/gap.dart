import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../styles.dart';

enum AppGapSize {
  none,
  xxs,
  xs,
  s,
  m,
  l,
  xl,
  xxl,
  xxxl,
}

extension AppGapSizeExtension on AppGapSize {
  double getSpacing() {
    switch (this) {
      case AppGapSize.none:
        return 0;
      case AppGapSize.xxs:
        return AppSpacing.xxs;
      case AppGapSize.xs:
        return AppSpacing.xs;
      case AppGapSize.s:
        return AppSpacing.s;
      case AppGapSize.m:
        return AppSpacing.m;
      case AppGapSize.l:
        return AppSpacing.l;
      case AppGapSize.xl:
        return AppSpacing.xl;
      case AppGapSize.xxl:
        return AppSpacing.xxl;
      case AppGapSize.xxxl:
        return AppSpacing.xxxl;
    }
  }
}

class AppGap extends StatelessWidget {
  const AppGap(
    this.size, {
    super.key,
  });

  /// 4
  const AppGap.xxs({
    super.key,
  }) : size = AppGapSize.xxs;

  /// 8
  const AppGap.xs({
    super.key,
  }) : size = AppGapSize.xs;

  /// 12
  const AppGap.s({
    super.key,
  }) : size = AppGapSize.s;

  /// 16
  const AppGap.m({
    super.key,
  }) : size = AppGapSize.m;

  /// 24
  const AppGap.l({
    super.key,
  }) : size = AppGapSize.l;

  /// 32
  const AppGap.xl({
    super.key,
  }) : size = AppGapSize.xl;

  /// 64
  const AppGap.xxl({
    super.key,
  }) : size = AppGapSize.xxl;

  /// 80
  const AppGap.xxxl({
    super.key,
  }) : size = AppGapSize.xxxl;

  final AppGapSize size;

  @override
  Widget build(BuildContext context) {
    return Gap(size.getSpacing());
  }
}

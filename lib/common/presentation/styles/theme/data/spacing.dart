import 'package:flutter/widgets.dart';

class AppSpacing {
  /// 4
  static const double xxs = 4;

  /// 8
  static const double xs = 8;

  /// 12
  static const double s = 12;

  /// 16
  static const double m = 16;

  /// 24
  static const double l = 24;

  /// 32
  static const double xl = 32;

  /// 64
  static const double xxl = 64;

  /// 80
  static const double xxxl = 80;
}

class AppEdgeInsetsSpacingData {
  /// 4
  EdgeInsets get xxs => const EdgeInsets.all(AppSpacing.xxs);

  /// 8
  EdgeInsets get xs => const EdgeInsets.all(AppSpacing.xs);

  /// 12
  EdgeInsets get s => const EdgeInsets.all(AppSpacing.s);

  /// 16
  EdgeInsets get m => const EdgeInsets.all(AppSpacing.m);

  /// 24
  EdgeInsets get l => const EdgeInsets.all(AppSpacing.l);

  /// 32
  EdgeInsets get xl => const EdgeInsets.all(AppSpacing.xl);

  /// 64
  EdgeInsets get xxl => const EdgeInsets.all(AppSpacing.xxl);

  /// 80
  EdgeInsets get xxxl => const EdgeInsets.all(AppSpacing.xxxl);
}

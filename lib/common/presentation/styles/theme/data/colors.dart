import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../utils/named.dart';

class AppColors {
  static const Color primary = Color(0xFF001120);
  static const Color secondary = Color(0xFFEDF2F4);
  static const Color accent = Color(0xFFEF233C);
}

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.primary,
    required this.accent,
    required this.secondary,
  });

  factory AppColorsData.regular() => const AppColorsData(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        accent: AppColors.accent,
      );

  // factory AppColorsData.dark() => const AppColorsData(
  //     );

  final Color primary;
  final Color accent;
  final Color secondary;

  @override
  List<Object?> get props => [
        primary.named('primary'),
        accent.named('accent'),
        secondary.named('secondary'),
      ];
}

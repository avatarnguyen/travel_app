import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

import '../../../../utils/named.dart';

const Color kcLightShadow = Color(0x19303133);

class AppShadowsData extends Equatable {
  const AppShadowsData({
    required this.base,
    required this.small,
    required this.regular,
    required this.medium,
    required this.large,
    required this.big,
  });

  factory AppShadowsData.regular() => const AppShadowsData(
        base: BoxShadow(
          color: kcLightShadow,
          blurRadius: 1,
        ),
        small: BoxShadow(
          color: kcLightShadow,
          blurRadius: 3,
          offset: Offset(0, 1),
        ),
        regular: BoxShadow(
          color: kcLightShadow,
          blurRadius: 4,
          offset: Offset(0, 2),
        ),
        medium: BoxShadow(
          color: kcLightShadow,
          blurRadius: 8,
          offset: Offset(0, 4),
        ),
        big: BoxShadow(
          color: kcLightShadow,
          blurRadius: 16,
          offset: Offset(0, 8),
        ),
        large: BoxShadow(
          color: kcLightShadow,
          blurRadius: 24,
          offset: Offset(0, 16),
        ),
      );

  factory AppShadowsData.withColor(Color color) => AppShadowsData(
        base: BoxShadow(
          color: color,
          blurRadius: 1,
        ),
        small: BoxShadow(
          color: color,
          blurRadius: 3,
          offset: const Offset(0, 1),
        ),
        regular: BoxShadow(
          color: color,
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
        medium: BoxShadow(
          color: color,
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
        big: BoxShadow(
          color: color,
          blurRadius: 16,
          offset: const Offset(0, 8),
        ),
        large: BoxShadow(
          color: color,
          blurRadius: 24,
          offset: const Offset(0, 16),
        ),
      );

  final BoxShadow base;
  final BoxShadow small;
  final BoxShadow regular;
  final BoxShadow medium;
  final BoxShadow big;
  final BoxShadow large;

  @override
  List<Object?> get props => [
        base.named('base'),
        small.named('small'),
        regular.named('regular'),
        medium.named('medium'),
        big.named('big'),
        large.named('large'),
      ];
}

import 'package:flutter/material.dart';

import 'base_button.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.onPressed,
    this.child,
    this.data,
    this.color,
    required this.size,
    this.padding,
    this.radius,
    this.density,
  });

  const AppOutlinedButton.small({
    super.key,
    required this.onPressed,
    this.child,
    this.color,
    this.data,
    this.padding,
    this.radius,
    this.density,
  }) : size = ButtonSize.small;

  const AppOutlinedButton.regular({
    super.key,
    required this.onPressed,
    this.child,
    this.color,
    this.data,
    this.padding,
    this.radius,
    this.density,
  }) : size = ButtonSize.regular;

  const AppOutlinedButton.big({
    super.key,
    required this.onPressed,
    this.child,
    this.color,
    this.data,
    this.padding,
    this.radius,
    this.density,
  }) : size = ButtonSize.big;

  const AppOutlinedButton.rounded({
    super.key,
    required this.onPressed,
    this.child,
    this.color,
    this.data,
  })  : size = ButtonSize.big,
        padding = const EdgeInsets.all(12),
        density = const VisualDensity(
          horizontal: VisualDensity.minimumDensity,
        ),
        radius = 48.0;

  final void Function() onPressed;
  final Widget? child;
  final String? data;
  final Color? color;
  final ButtonSize size;
  final EdgeInsets? padding;
  final VisualDensity? density;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonColor = color ?? theme.colorScheme.tertiary;
    return AppButton.outlined(
      size: size,
      onPressed: onPressed,
      color: buttonColor,
      foregroundColor: buttonColor,
      padding: padding,
      radius: radius,
      density: density,
      child: child ?? Text(data ?? ''),
    );
  }
}

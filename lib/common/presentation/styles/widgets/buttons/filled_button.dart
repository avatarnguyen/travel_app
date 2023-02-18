import 'package:flutter/material.dart';

import 'base_button.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    super.key,
    required this.onPressed,
    this.child,
    this.data,
    this.size,
    this.backgroundColor,
    this.foregroundColor,
    this.radius,
    this.padding,
    this.density,
  });

  const AppFilledButton.small({
    super.key,
    required this.onPressed,
    this.child,
    this.data,
    this.backgroundColor,
    this.foregroundColor,
    this.radius,
    this.padding,
    this.density,
  }) : size = ButtonSize.small;

  const AppFilledButton.regular({
    super.key,
    required this.onPressed,
    this.child,
    this.data,
    this.backgroundColor,
    this.foregroundColor,
    this.radius,
    this.padding,
    this.density,
  }) : size = ButtonSize.regular;

  const AppFilledButton.big({
    super.key,
    required this.onPressed,
    this.child,
    this.data,
    this.backgroundColor,
    this.foregroundColor,
    this.radius,
    this.padding,
    this.density,
  }) : size = ButtonSize.big;

  final void Function() onPressed;
  final Widget? child;
  final String? data;
  final ButtonSize? size;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? radius;
  final EdgeInsets? padding;
  final VisualDensity? density;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = backgroundColor ?? theme.colorScheme.tertiary;
    final foreground = foregroundColor ?? theme.colorScheme.secondary;

    return AppButton.filled(
      onPressed: onPressed,
      size: size,
      color: color,
      foregroundColor: foreground,
      padding: padding,
      radius: radius,
      density: density,
      child: child ?? Text(data ?? ''),
    );
  }
}

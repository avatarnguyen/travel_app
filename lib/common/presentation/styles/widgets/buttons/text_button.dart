import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'base_button.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.data,
    required this.size,
    this.color,
    this.padding,
  });

  const AppTextButton.small({
    super.key,
    required this.onPressed,
    required this.data,
    this.color,
    this.padding,
  }) : size = ButtonSize.small;

  const AppTextButton.regular({
    super.key,
    required this.onPressed,
    required this.data,
    this.color,
    this.padding,
  }) : size = ButtonSize.regular;

  const AppTextButton.big({
    super.key,
    required this.onPressed,
    required this.data,
    this.color,
    this.padding,
  }) : size = ButtonSize.big;

  final void Function() onPressed;
  final String data;
  final Color? color;
  final ButtonSize size;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonColor = color ?? theme.colorScheme.primary;
    final textStyle = () {
      switch (size) {
        case ButtonSize.small:
          return theme.textTheme.bodyText1;
        case ButtonSize.regular:
          return theme.textTheme.headline4;
        case ButtonSize.big:
          return theme.textTheme.headline3;
        default:
          return theme.textTheme.bodyText2;
      }
    }();

    return CupertinoButton(
      padding: padding ?? EdgeInsets.zero,
      onPressed: onPressed,
      child: Text(
        data,
        style: textStyle?.copyWith(color: buttonColor),
      ),
    );
  }
}

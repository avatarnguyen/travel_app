import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../styles.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton(
    this.data, {
    super.key,
    this.color,
    this.onPressed,
    this.size = Sizes.m,
  });

  const AppIconButton.small(
    this.data, {
    super.key,
    this.color,
    this.onPressed,
  }) : size = Sizes.s;

  const AppIconButton.regular(
    this.data, {
    super.key,
    this.color,
    this.onPressed,
  }) : size = Sizes.m;

  const AppIconButton.medium(
    this.data, {
    super.key,
    this.color,
    this.onPressed,
  }) : size = Sizes.l;

  const AppIconButton.big(
    this.data, {
    super.key,
    this.color,
    this.onPressed,
  }) : size = Sizes.xl;

  final IconData data;
  final Color? color;
  final double size;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = this.color ?? theme.colorScheme.tertiary;
    final icon = Icon(
      data,
      color: color,
      size: size,
    );
    return Platform.isIOS
        ? CupertinoButton(
            // padding: EdgeInsets.zero,
            onPressed: onPressed,
            child: icon,
          )
        : IconButton(
            onPressed: onPressed,
            icon: icon,
          );
  }
}

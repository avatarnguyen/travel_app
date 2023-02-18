import 'dart:io';

import 'package:flutter/material.dart';

import '../../styles.dart';

enum ButtonSize {
  small,
  regular,
  big,
}

enum ButtonType {
  outlined,
  filled,
  text,
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.child,
    required this.type,
    this.size,
    this.color,
    this.radius,
    this.padding,
    this.density,
    this.foregroundColor,
  });

  const AppButton.filled({
    super.key,
    required this.onPressed,
    required this.child,
    this.size,
    this.color,
    this.radius,
    this.padding,
    this.density,
    this.foregroundColor,
  }) : type = ButtonType.filled;

  const AppButton.outlined({
    super.key,
    required this.onPressed,
    required this.child,
    this.size,
    this.color,
    this.radius,
    this.padding,
    this.density,
    this.foregroundColor,
  }) : type = ButtonType.outlined;

  final void Function() onPressed;
  final Widget child;
  final ButtonSize? size;
  final ButtonType type;
  final Color? color;
  final Color? foregroundColor;
  final double? radius;
  final EdgeInsets? padding;
  final VisualDensity? density;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
    final color = this.color ?? theme.colorScheme.secondary;

    const interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };

    final hoverColor = color.withOpacity(0.4);
    const borderWidth = kBorderWidthButton;

    Color getBackgroundColor(Set<MaterialState> states) {
      if (states.any(interactiveStates.contains)) {
        return hoverColor;
      }
      return color;
    }

    Color getForegroundColor(Set<MaterialState> states) {
      if (states.any(interactiveStates.contains)) {
        final hoverForegroundColor = foregroundColor?.withOpacity(0.4);
        return hoverForegroundColor ?? hoverColor;
      }
      return foregroundColor ?? color;
    }

    TextStyle getTextStyle(Set<MaterialState> states) {
      if (states.any(interactiveStates.contains)) {
        return textStyle!.copyWith(color: hoverColor);
      }
      return textStyle!;
    }

    OutlinedBorder getOutlinedBorder(Set<MaterialState> states) {
      if (states.any(interactiveStates.contains)) {
        return radius != null
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius!)),
                side: BorderSide(color: hoverColor, width: borderWidth),
              )
            : const StadiumBorder();
      }
      if (radius != null) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius!)),
          side: BorderSide(color: color, width: borderWidth),
        );
      } else {
        return const StadiumBorder();
      }
    }

    BorderSide getBorderSide(Set<MaterialState> states) {
      if (states.any(interactiveStates.contains)) {
        return BorderSide(color: hoverColor, width: borderWidth);
      }
      return BorderSide(color: color, width: borderWidth);
    }

    return type == ButtonType.outlined
        ? OutlinedButton(
            style: ButtonStyle(
              padding:
                  padding != null ? MaterialStateProperty.all(padding) : null,
              textStyle: MaterialStateProperty.resolveWith(getTextStyle),
              visualDensity: density ?? VisualDensity.adaptivePlatformDensity,
              foregroundColor: MaterialStateProperty.resolveWith(
                getForegroundColor,
              ),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              overlayColor: MaterialStateProperty.all(hoverColor),
              shape: MaterialStateProperty.resolveWith(getOutlinedBorder),
              elevation: MaterialStateProperty.all(
                Platform.isIOS ? 0 : 5,
              ),
              side: MaterialStateProperty.resolveWith(getBorderSide),
              splashFactory: Platform.isIOS
                  ? NoSplash.splashFactory
                  : InkRipple.splashFactory,
            ),
            onPressed: onPressed,
            child: child,
          )
        : ElevatedButton(
            style: ButtonStyle(
              padding:
                  padding != null ? MaterialStateProperty.all(padding) : null,
              textStyle: MaterialStateProperty.resolveWith(getTextStyle),
              visualDensity: density ?? VisualDensity.adaptivePlatformDensity,
              foregroundColor: MaterialStateProperty.resolveWith(
                getForegroundColor,
              ),
              backgroundColor: MaterialStateProperty.resolveWith(
                getBackgroundColor,
              ),
              overlayColor: MaterialStateProperty.all(hoverColor),
              shape: MaterialStateProperty.resolveWith(getOutlinedBorder),
              elevation: MaterialStateProperty.all(
                Platform.isIOS ? 0 : 5,
              ),
              splashFactory: Platform.isIOS
                  ? NoSplash.splashFactory
                  : InkRipple.splashFactory,
            ),
            onPressed: onPressed,
            child: child,
          );
  }
}

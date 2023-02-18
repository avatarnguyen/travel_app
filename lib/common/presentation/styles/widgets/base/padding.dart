import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import 'gap.dart';

class AppEdgeInsets extends Equatable {
  const AppEdgeInsets.all(AppGapSize value)
      : left = value,
        top = value,
        right = value,
        bottom = value;

  const AppEdgeInsets.symmetric({
    AppGapSize vertical = AppGapSize.none,
    AppGapSize horizontal = AppGapSize.none,
  })  : left = horizontal,
        top = vertical,
        right = horizontal,
        bottom = vertical;

  const AppEdgeInsets.only({
    this.left = AppGapSize.none,
    this.top = AppGapSize.none,
    this.right = AppGapSize.none,
    this.bottom = AppGapSize.none,
  });

  const AppEdgeInsets.xxs()
      : left = AppGapSize.xxs,
        top = AppGapSize.xxs,
        right = AppGapSize.xxs,
        bottom = AppGapSize.xxs;

  const AppEdgeInsets.xs()
      : left = AppGapSize.xs,
        top = AppGapSize.xs,
        right = AppGapSize.xs,
        bottom = AppGapSize.xs;

  const AppEdgeInsets.s()
      : left = AppGapSize.s,
        top = AppGapSize.s,
        right = AppGapSize.s,
        bottom = AppGapSize.s;

  const AppEdgeInsets.m()
      : left = AppGapSize.m,
        top = AppGapSize.m,
        right = AppGapSize.m,
        bottom = AppGapSize.m;

  const AppEdgeInsets.l()
      : left = AppGapSize.l,
        top = AppGapSize.l,
        right = AppGapSize.l,
        bottom = AppGapSize.l;

  const AppEdgeInsets.xl()
      : left = AppGapSize.xl,
        top = AppGapSize.xl,
        right = AppGapSize.xl,
        bottom = AppGapSize.xl;

  const AppEdgeInsets.xxl()
      : left = AppGapSize.xxl,
        top = AppGapSize.xxl,
        right = AppGapSize.xxl,
        bottom = AppGapSize.xxl;

  final AppGapSize left;
  final AppGapSize top;
  final AppGapSize right;
  final AppGapSize bottom;

  @override
  List<Object?> get props => [
        left,
        top,
        right,
        bottom,
      ];

  EdgeInsets toEdgeInsets() {
    return EdgeInsets.only(
      left: left.getSpacing(),
      top: top.getSpacing(),
      right: right.getSpacing(),
      bottom: bottom.getSpacing(),
    );
  }
}

class AppPadding extends StatelessWidget {
  const AppPadding({
    super.key,
    this.padding = const AppEdgeInsets.all(AppGapSize.none),
    this.child,
  });

  const AppPadding.xxs({
    super.key,
    this.child,
  }) : padding = const AppEdgeInsets.all(AppGapSize.xxs);

  const AppPadding.xs({
    super.key,
    this.child,
  }) : padding = const AppEdgeInsets.all(AppGapSize.xs);

  const AppPadding.s({
    super.key,
    this.child,
  }) : padding = const AppEdgeInsets.all(AppGapSize.s);

  const AppPadding.m({
    super.key,
    this.child,
  }) : padding = const AppEdgeInsets.all(AppGapSize.m);

  const AppPadding.l({
    super.key,
    this.child,
  }) : padding = const AppEdgeInsets.all(AppGapSize.l);

  const AppPadding.xl({
    super.key,
    this.child,
  }) : padding = const AppEdgeInsets.all(AppGapSize.xl);

  const AppPadding.vertiXXS({
    super.key,
    this.child,
  }) : padding = const AppEdgeInsets.symmetric(vertical: AppGapSize.xxs);

  final AppEdgeInsets padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding.toEdgeInsets(),
      child: child,
    );
  }
}

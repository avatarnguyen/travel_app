import 'package:flutter/material.dart';

import '../../../../common/presentation/styles/styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static String get routeName => 'splash';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: Sizes.xl,
        height: Sizes.xl,
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}

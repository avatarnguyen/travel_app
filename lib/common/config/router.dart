import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/domain/auth_presentation.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/home/presentation/pages/splash_page.dart';
import '../presentation/styles/styles.dart';

final navigationKey = GlobalKey<NavigatorState>();

final routeProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    navigatorKey: navigationKey,
    debugLogDiagnostics: true,
    initialLocation: SplashPage.routeLocation,
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Column(
          children: [
            const Icon(Icons.error, color: Colors.red),
            const AppGap.xs(),
            Text(state.error.toString()),
          ],
        ),
      ),
    ),
    redirect: (context, state) {
      // If our async state is loading, don't perform redirects, yet
      if (authState.isLoading || authState.hasError) return null;

      // Here we guarantee that hasData == true, i.e. we have a readable value

      // This has to do with how the FirebaseAuth SDK handles the "log-in" state
      // Returning `null` means "we are not authorized"
      final isAuth = authState.valueOrNull != null;

      final isSplash = state.location == SplashPage.routeLocation;
      if (isSplash) {
        if (isAuth) {
          return HomePage.routeLocation;
        } else {
          return LoginPage.routeLocation;
        }
      }

      final isLoggingIn = state.location == LoginPage.routeLocation;
      if (isLoggingIn) return isAuth ? HomePage.routeLocation : null;

      return isAuth ? null : SplashPage.routeLocation;
    },
    routes: [
      GoRoute(
        path: SplashPage.routeLocation,
        name: SplashPage.routeName,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        name: HomePage.routeName,
        path: HomePage.routeLocation,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: LoginPage.routeName,
        path: LoginPage.routeLocation,
        builder: (context, state) => const LoginPage(),
      ),
    ],
  );
});

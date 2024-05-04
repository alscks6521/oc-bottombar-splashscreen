import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:splash_screen/screens/home_page.dart';
import 'package:splash_screen/screens/splash_page.dart';

final router = GoRouter(
  initialLocation: AppScreen.splash,
  routes: [
    GoRoute(
        path: AppScreen.splash,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const SplashScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        }
        // builder: ((context, state) => const SplashScreen()),
        ),
    GoRoute(
        path: AppScreen.main,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const HomePage(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        }
        // builder: ((context, state) => const HomePage()),
        ),
  ],
  errorBuilder: (context, state) => const Scaffold(
    body: Center(
      child: Text('Not found'),
    ),
  ),
  debugLogDiagnostics: true,
);

class AppScreen {
  static String splash = '/splash';
  static String main = '/main';
}

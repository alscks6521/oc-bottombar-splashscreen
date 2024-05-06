import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:splash_screen/screens/bottom_nav.dart';
import 'package:splash_screen/screens/chart_screen/chart_page.dart';
import 'package:splash_screen/screens/home_page.dart';
import 'package:splash_screen/screens/indexs_page.dart';
import 'package:splash_screen/screens/input_page.dart';
import 'package:splash_screen/screens/splash_page.dart';

final router = GoRouter(
  initialLocation: AppScreen.splash,
  routes: [
    GoRoute(
      path: AppScreen.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          extendBody: true, // 바텀 네비게이션 바 뒤로 body를 추가
          body: child,
          bottomNavigationBar: BottomNavBar(
            currentIndex: _calculateSelectedIndex(state.uri.toString()),
          ),
        );
      },
      routes: [
        GoRoute(
          path: AppScreen.main,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const HomePage(),
          ),
        ),
        GoRoute(
          path: AppScreen.chart,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const ChartPage(),
          ),
        ),
        GoRoute(
          path: AppScreen.indexs,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const IndexsScreen(),
          ),
        ),
        GoRoute(
          path: AppScreen.input,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const InputPage(),
          ),
        ),
      ],
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
  static String chart = '/chart';
  static String indexs = '/indexs';
  static String input = '/input';
}

int _calculateSelectedIndex(String location) {
  return [AppScreen.indexs, AppScreen.main, AppScreen.chart].indexOf(location);
}

  // pageBuilder: (context, state) {
      //   return CustomTransitionPage(
      //     key: state.pageKey,
      //     child: const HomePage(),
      //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //       return FadeTransition(opacity: animation, child: child);
      //     },
      //   );
      // },
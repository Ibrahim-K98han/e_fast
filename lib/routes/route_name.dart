import 'package:e_fast/presentation/auth/login_screen.dart';
import 'package:e_fast/presentation/balance_details/balance_details_screen.dart';
import 'package:e_fast/presentation/main/main_screen.dart';
import 'package:e_fast/presentation/onboarding/onboarding_screen.dart';
import 'package:e_fast/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const String splashScreen = '/splashScreen';
  static const String onBoardingScreen = '/onBoardingScreen';
  static const String loginScreen = '/loginScreen';
  static const String mainScreen = '/mainScreen';
  static const String balanceDetailsScreen = '/balanceDetailsScreen';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SplashScreen(),
        );

      case RouteNames.onBoardingScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const OnBoardingScreen(),
        );

      case RouteNames.loginScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const LoginScreen(),
        );
      case RouteNames.mainScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const MainScreen(),
        );
      case RouteNames.balanceDetailsScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const BalanceDetailsScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No Route Found ${settings.name}')),
          ),
        );
    }
  }
}

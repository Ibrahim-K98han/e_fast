import 'package:e_fast/presentation/add_parcel/add_parcel_screen.dart';
import 'package:e_fast/presentation/auth/login_screen.dart';
import 'package:e_fast/presentation/balance_details/balance_details_screen.dart';
import 'package:e_fast/presentation/main/main_screen.dart';
import 'package:e_fast/presentation/onboarding/onboarding_screen.dart';
import 'package:e_fast/presentation/parcel/parcel_screen.dart';
import 'package:e_fast/presentation/pickup/pickup_request.dart';
import 'package:e_fast/presentation/pickup/regular_delivery_screen.dart';
import 'package:e_fast/presentation/pickup/update_primary_address_screen.dart';
import 'package:e_fast/presentation/pickup_and_drop/add_pickup_point_screen.dart';
import 'package:e_fast/presentation/pickup_and_drop/pickup_drop_screen.dart';
import 'package:e_fast/presentation/splash/splash_screen.dart';
import 'package:e_fast/presentation/summary/summary_screen.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const String splashScreen = '/splashScreen';
  static const String onBoardingScreen = '/onBoardingScreen';
  static const String loginScreen = '/loginScreen';
  static const String mainScreen = '/mainScreen';
  static const String balanceDetailsScreen = '/balanceDetailsScreen';
  static const String parcelScree = '/parcelScreen';
  static const String summaryScreen = '/summaryScreen';
  static const String addParcelScreen = '/addParcelScreen';
  static const String pickupRequest = '/pickupRequest';
  static const String regularDeliveryScreen = '/regularDeliveryScreen';
  static const String updatePrimaryAddressScreen =
      '/updatePrimaryAddressScreen';
  static const String pickupDropScreen = '/pickupDropScreen';
  static const String addPickupPointScreen = '/addPickupPointScreen';

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
      case RouteNames.parcelScree:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ParcelScreen(),
        );
      case RouteNames.summaryScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SummaryScreen(),
        );
      case RouteNames.addParcelScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AddParcelScreen(),
        );
      case RouteNames.pickupRequest:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const PickupRequest(),
        );
      case RouteNames.regularDeliveryScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const RegularDeliveryScreen(),
        );
      case RouteNames.updatePrimaryAddressScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const UpdatePrimaryAddressScreen(),
        );
      case RouteNames.pickupDropScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const PickupDropScreen(),
        );
      case RouteNames.addPickupPointScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AddPickupPointScreen(),
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

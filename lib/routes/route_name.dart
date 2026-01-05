import 'package:e_fast/screen/add_balance/add_balance_screen.dart';
import 'package:e_fast/screen/add_parcel/add_parcel_screen.dart';
import 'package:e_fast/screen/auth/login_screen.dart';
import 'package:e_fast/screen/balance_details/balance_details_screen.dart';
import 'package:e_fast/screen/cancellation/cancellation_screen.dart';
import 'package:e_fast/screen/coverage/coverage_screen.dart';
import 'package:e_fast/screen/fraud_check/add_fraud_screen.dart';
import 'package:e_fast/screen/fraud_check/fraud_check_screen.dart';
import 'package:e_fast/screen/main/main_screen.dart';
import 'package:e_fast/screen/onboarding/onboarding_screen.dart';
import 'package:e_fast/screen/parcel/parcel_screen.dart';
import 'package:e_fast/screen/payment/payment_screen.dart';
import 'package:e_fast/screen/pickup/pickup_request.dart';
import 'package:e_fast/screen/pickup/regular_delivery_screen.dart';
import 'package:e_fast/screen/pickup/update_primary_address_screen.dart';
import 'package:e_fast/screen/pickup_and_drop/add_pickup_point_screen.dart';
import 'package:e_fast/screen/pickup_and_drop/pickup_drop_screen.dart';
import 'package:e_fast/screen/pickup_point/pickup_point_screen.dart';
import 'package:e_fast/screen/pricing/pricing_screen.dart';
import 'package:e_fast/screen/return_list/returan_list_screen.dart';
import 'package:e_fast/screen/splash/splash_screen.dart';
import 'package:e_fast/screen/summary/summary_screen.dart';
import 'package:e_fast/screen/support/support_screen.dart';
import 'package:e_fast/screen/tickets/tickets_screen.dart';
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
  static const String paymentScreen = '/paymentScreen';
  static const String addBalanceScreen = '/addBalanceScreen';
  static const String returnListScreen = '/returnListScreen';
  static const String cancellationScreen = '/cancellationScreen';
  static const String fraudCheckScreen = '/fraudCheckScreen';
  static const String addFraudScreen = '/addFraudScreen';
  static const String ticketsScreen = '/ticketsScreen';
  static const String supportScreen = '/supportScreen';
  static const String pickupPointScreen = '/pickupPointScreen';
  static const String coverageScreen = '/coverageScreen';
  static const String pricingScreen = '/pricingScreen';

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
      case RouteNames.paymentScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const PaymentScreen(),
        );
      case RouteNames.addBalanceScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AddBalanceScreen(),
        );
      case RouteNames.returnListScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ReturnListScreen(),
        );
      case RouteNames.cancellationScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const CancellationScreen(),
        );
      case RouteNames.fraudCheckScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const FraudCheckScreen(),
        );
      case RouteNames.addFraudScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AddFraudScreen(),
        );
      case RouteNames.ticketsScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const TicketsScreen(),
        );
      case RouteNames.supportScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SupportScreen(),
        );
      case RouteNames.pickupPointScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const PickupPointScreen(),
        );
      case RouteNames.coverageScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const CoverageScreen(),
        );
      case RouteNames.pricingScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const PricingScreen(),
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

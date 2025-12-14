import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/app_image.dart';
import 'package:e_fast/presentation/widgets/custom_images.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:e_fast/routes/route_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;

  initializeController() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
      reverseCurve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    initializeController();
     goToNext();
    super.initState();
  }

  goToNext() {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        RouteNames.onBoardingScreen,
        (route) => false,
      );
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Center(
            child: CustomImage(
              path: AppImage.appLogo,
              width: 220,
              fit: BoxFit.contain,
              color: whiteColor,
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 30,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 2,
                  child: LinearProgressIndicator(
                    backgroundColor: whiteColor.withOpacity(0.25),
                    valueColor: AlwaysStoppedAnimation(
                      whiteColor.withOpacity(0.9),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomText(
                  text: 'Everything You Need in One App.',
                  color: whiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

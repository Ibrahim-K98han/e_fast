import 'package:e_fast/presentation/onboarding/data/onboard_data.dart';
import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/app_image.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_images.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:e_fast/presentation/widgets/primary_button.dart';
import 'package:e_fast/routes/route_name.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late int _numPages;
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _numPages = data.length;
    _pageController = PageController(initialPage: _currentPage);
  }

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            // height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildImagesSlider(),
                Utils.verticalSpace(size.height * 0.06),
                _buildDotIndicator(),
                Utils.verticalSpace(24.0),
                _buildContent(),
                Utils.verticalSpace(30.0),
                Padding(
                  padding: Utils.symmetric(),
                  child: PrimaryButton(
                    borderRadiusSize: 4.0,
                    text: 'Become a Merchant',
                    onPressed: () {},
                  ),
                ),
                Utils.verticalSpace(16.0),
                Padding(
                  padding: Utils.symmetric(),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        RouteNames.loginScreen,
                        (route) => false,
                      );
                    },
                    child: Container(
                      height: 52.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Center(
                        child: CustomText(
                          text: 'Login',
                          color: primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImagesSlider() {
    return Container(
      height: size.height * 0.4,
      padding: Utils.all(value: 4.0),
      child: PageView(
        physics: const ClampingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: data.map((e) => CustomImage(path: e.image)).toList(),
      ),
    );
  }

  Widget _buildContent() {
    return AnimatedSwitcher(
      duration: kDuration,
      transitionBuilder: (Widget child, Animation<double> anim) {
        return FadeTransition(opacity: anim, child: child);
      },
      child: getContent(),
    );
  }

  Widget getContent() {
    final item = data[_currentPage];
    return Padding(
      padding: Utils.symmetric(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        key: ValueKey('$_currentPage'),
        children: [
          CustomText(
            text: item.title,
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.start,
            color: blackColor,
          ),
          Utils.verticalSpace(16.0),
          CustomText(
            text: item.subTitle,
            textAlign: TextAlign.justify,
            color: grayColor,
          ),
        ],
      ),
    );
  }

  Widget _buildDotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(data.length, (index) {
        final i = _currentPage == index;
        return AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: Utils.vSize(6.0),
          width: Utils.hSize(i ? 24.0 : 6.0),
          margin: Utils.only(right: 4.0),
          decoration: BoxDecoration(
            color: i ? primaryColor : primaryColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(i ? 50.0 : 5.0),
            //shape: i ? BoxShape.rectangle : BoxShape.circle,
          ),
        );
      }),
    );
  }
}

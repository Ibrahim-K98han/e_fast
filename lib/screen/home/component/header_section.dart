import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/widgets/custom_text.dart';
import 'package:e_fast/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _slideAnimation;
  late final Animation<double> _fadeOutTapText;
  late final Animation<double> _fadeInBalance;

  late Animation<double> _detailsFade;
  late Animation<Offset> _detailsSlide;

  bool _showBalance = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    // ৳ slide
    _slideAnimation = Tween<double>(begin: 4, end: 102).animate(
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
    );

    // Tap text fade out
    _fadeOutTapText = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeInOut),
      ),
    );

    // Balance fade in
    _fadeInBalance = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 1.0, curve: Curves.easeInOut),
      ),
    );

    // Details fade
    _detailsFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.easeIn),
      ),
    );

    // Details slide
    _detailsSlide = Tween<Offset>(begin: const Offset(0.3, 0), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.6, 1.0, curve: Curves.easeOut),
          ),
        );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(seconds: 3), () {
          if (mounted) {
            _controller.reverse().then((_) {
              if (mounted) setState(() => _showBalance = false);
            });
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    if (_controller.isAnimating) return;
    setState(() => _showBalance = true);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _handleTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 140,
        height: 28,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.black12),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // "Tap for balance" text (fades out)
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Opacity(opacity: _fadeOutTapText.value, child: child!);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: CustomText(
                  text: 'Tap for balance',
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Actual balance (fades in)
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Opacity(opacity: _fadeInBalance.value, child: child!);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 70),
                child: CustomText(
                  text: '৳ 500.0',
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                if (_controller.value < 0.6) {
                  return const SizedBox.shrink();
                }
                return FadeTransition(
                  opacity: _detailsFade,
                  child: SlideTransition(position: _detailsSlide, child: child),
                );
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.balanceDetailsScreen);
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 70),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const CustomText(
                    text: 'Details',
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            // Sliding ৳ circle
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                if (_controller.value >= 0.6) {
                  return const SizedBox.shrink();
                }
                return Positioned(
                  left: _showBalance ? _slideAnimation.value : 8,
                  child: child!,
                );
              },
              child: Container(
                height: 20,
                width: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  '৳',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

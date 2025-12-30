import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/app_image.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_appbar.dart';
import 'package:e_fast/presentation/widgets/custom_images.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CoverageScreen extends StatelessWidget {
  const CoverageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: CustomAppBar(title: 'Coverage'),
      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: Column(
          children: [
            Container(
              padding: Utils.symmetric(h: 14.0, v: 10.0),
              decoration: BoxDecoration(color: whiteColor),
              child: Column(
                children: [
                  CustomText(
                    text: 'Search Your Area',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  Utils.verticalSpace(8.0),
                  CustomText(text: 'You can easily search your area from here'),
                  Utils.verticalSpace(8.0),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Search coverage area',
                          ),
                        ),
                      ),
                      Utils.horizontalSpace(8.0),
                      Container(
                        height: 42,
                        width: 40,
                        padding: Utils.all(value: 8.0),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: CustomImage(
                          path: AppImage.notification,
                          color: whiteColor,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                  Utils.verticalSpace(20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

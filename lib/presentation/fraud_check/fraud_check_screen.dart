import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/app_image.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_appbar.dart';
import 'package:e_fast/presentation/widgets/custom_images.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class FraudCheckScreen extends StatelessWidget {
  const FraudCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: CustomAppBar(title: 'Fraud Check'),
      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: Column(
          children: [
            Container(
              padding: Utils.symmetric(v: 10.0),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(hintText: 'Enter Number'),
                        ),
                      ),
                      Utils.horizontalSpace(12.0),
                      Container(
                        height: 45,
                        width: 45,
                        padding: Utils.all(value: 10.0),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: CustomImage(
                          path: AppImage.notification,
                          width: 20,
                          height: 20,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                  CustomImage(
                    path: AppImage.orderTracking,
                    width: 100,
                    height: 150,
                  ),
                  CustomText(text: 'Check fraud by phone number'),
                  Utils.verticalSpace(10.0),
                ],
              ),
            ),
            Utils.verticalSpace(16.0),

            Container(
              padding: Utils.symmetric(v: 10.0),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      CustomText(text: 'Recent Activity'),
                      CustomText(
                        text: 'Add New',
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Utils.verticalSpace(12.0),
                  Container(
                    padding: Utils.symmetric(h: 8.0, v: 8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: grayColor.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        CustomText(
                          text: '01720852395',
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: 'সাহিন আলম',
                          color: grayColor.withOpacity(0.5),
                        ),
                        Utils.verticalSpace(6.0),
                        CustomText(
                          text:
                              'অর্ডার করে আর খবর নাই, ফোন করলে তাও ধরে না । নাম্বার ব্লক করে দেয়। পার্সেল অর্ডার করলে সোজা না করে দিবেন। ',
                        ),
                        Utils.verticalSpace(6.0),
                        CustomText(
                          text: 'Dec 23, 2025, 08:54 PM',
                          color: grayColor.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

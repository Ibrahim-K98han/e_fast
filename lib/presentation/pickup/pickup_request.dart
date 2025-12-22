import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/app_image.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_images.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:e_fast/routes/route_name.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class PickupRequest extends StatelessWidget {
  const PickupRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: CustomAppBar(title: 'Pickup Request'),
      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RouteNames.regularDeliveryScreen,
                    );
                  },
                  child: Container(
                    padding: Utils.all(value: 20.0),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: Utils.all(value: 16.0),
                          decoration: BoxDecoration(
                            color: primaryColor.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: CustomImage(
                            path: AppImage.parcel,
                            color: primaryColor,
                            width: 30,
                            height: 30,
                          ),
                        ),
                        Utils.verticalSpace(8.0),
                        CustomText(
                          text: 'Regular Delivery',
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.addParcelScreen);
                  },
                  child: Container(
                    padding: Utils.all(value: 20.0),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: Utils.all(value: 16.0),
                          decoration: BoxDecoration(
                            color: primaryColor.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: CustomImage(
                            path: AppImage.parcel,
                            color: primaryColor,
                            width: 30,
                            height: 30,
                          ),
                        ),
                        Utils.verticalSpace(8.0),
                        CustomText(
                          text: 'Express Delivery',
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Utils.verticalSpace(14.0),
            CustomText(
              text: 'Recent pickup requests',
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/utils/utils.dart';
import 'package:e_fast/screen/widgets/custom_appbar.dart';
import 'package:e_fast/screen/widgets/custom_text.dart';
import 'package:e_fast/screen/widgets/primary_button.dart';
import 'package:e_fast/routes/route_name.dart';
import 'package:flutter/material.dart';

class RegularDeliveryScreen extends StatelessWidget {
  const RegularDeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: CustomAppBar(title: 'Regular Delivery'),
      bottomNavigationBar: Container(
        padding: Utils.symmetric(v: 16.0),
        decoration: BoxDecoration(color: whiteColor),
        child: PrimaryButton(
          text: 'Submit',
          onPressed: () {},
          borderRadiusSize: 4.0,
        ),
      ),
      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: Column(
          children: [
            Container(
              padding: Utils.symmetric(h: 10.0, v: 10.0),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      CustomText(
                        text: 'Recipient Info',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RouteNames.updatePrimaryAddressScreen,
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.add, color: primaryColor, size: 16),
                            CustomText(
                              text: 'Add',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Utils.verticalSpace(40.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Estimated Parcel (Optional)',
                    ),
                  ),
                  Utils.verticalSpace(10.0),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Note (Optional)'),
                  ),
                  Utils.verticalSpace(10.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

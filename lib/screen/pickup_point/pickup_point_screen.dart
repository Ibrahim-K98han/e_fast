import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/utils/utils.dart';
import 'package:e_fast/screen/widgets/custom_appbar.dart';
import 'package:e_fast/screen/widgets/custom_text.dart';
import 'package:e_fast/routes/route_name.dart';
import 'package:flutter/material.dart';

class PickupPointScreen extends StatelessWidget {
  const PickupPointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Select Pickup Point'),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50.0),
        ),
        onPressed: () {
          Navigator.pushNamed(context, RouteNames.addPickupPointScreen);
        },
        child: Icon(Icons.add, color: whiteColor),
      ),
      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: Column(
          children: [
            CustomText(
              text:
                  'No Pickup points found. Please add a pickup point ot continue',
            ),
          ],
        ),
      ),
    );
  }
}

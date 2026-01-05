import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/utils/utils.dart';
import 'package:e_fast/screen/widgets/custom_appbar.dart';
import 'package:e_fast/screen/widgets/custom_text.dart';
import 'package:e_fast/screen/widgets/primary_button.dart';
import 'package:e_fast/routes/route_name.dart';
import 'package:flutter/material.dart';

class AddPickupPointScreen extends StatelessWidget {
  const AddPickupPointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: CustomAppBar(title: 'Add Pickup Point'),
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
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Contact Person Name',
                      labelText: 'Contact Person Name',
                      labelStyle: TextStyle(color: grayColor, fontSize: 12),
                    ),
                  ),
                  Utils.verticalSpace(14.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Address',
                      labelText: 'Address',
                      labelStyle: TextStyle(color: grayColor, fontSize: 12),
                    ),
                  ),
                  Utils.verticalSpace(14.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Contact Number',
                      labelText: 'Contact Number',
                      labelStyle: TextStyle(color: grayColor, fontSize: 12),
                    ),
                  ),
                  Utils.verticalSpace(14.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'City',
                      labelText: 'City',
                      labelStyle: TextStyle(color: grayColor, fontSize: 12),
                    ),
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

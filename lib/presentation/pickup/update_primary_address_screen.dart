import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_appbar.dart';
import 'package:e_fast/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class UpdatePrimaryAddressScreen extends StatelessWidget {
  const UpdatePrimaryAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: CustomAppBar(title: 'Update Primary Address'),
      bottomNavigationBar: Container(
        padding: Utils.symmetric(v: 16.0),
        decoration: BoxDecoration(color: whiteColor),
        child: PrimaryButton(
          text: 'Update Address',
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
                    decoration: InputDecoration(hintText: 'Detailed Address'),
                  ),
                  Utils.verticalSpace(14.0),
                  TextFormField(decoration: InputDecoration(hintText: 'City')),
                  Utils.verticalSpace(14.0),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Post Office'),
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

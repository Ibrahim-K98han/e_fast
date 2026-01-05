import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/utils/utils.dart';
import 'package:e_fast/screen/widgets/custom_appbar.dart';
import 'package:e_fast/screen/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class AddFraudScreen extends StatelessWidget {
  const AddFraudScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: CustomAppBar(title: 'Add Fraud'),
      bottomNavigationBar: Container(
        padding: Utils.symmetric(v: 14.0),
        decoration: BoxDecoration(color: whiteColor),
        child: PrimaryButton(
          bgColor: grayColor.withOpacity(0.4),
          borderRadiusSize: 4.0,
          text: 'Submit',
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: Container(
          padding: Utils.symmetric(h: 14.0, v: 10.0),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Column(
            mainAxisSize: .min,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Person contact Number',
                  labelText: 'Person contact Number',
                  labelStyle: TextStyle(fontSize: 12),
                ),
              ),
              Utils.verticalSpace(12.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  labelText: 'Name',
                  labelStyle: TextStyle(fontSize: 12),
                ),
              ),
              Utils.verticalSpace(12.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Complain',
                  labelText: 'Complain',
                  labelStyle: TextStyle(fontSize: 12),
                ),
              ),
              Utils.verticalSpace(12.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Parcel ID (Optional)',
                  labelText: 'Parcel ID (Optional)',
                  labelStyle: TextStyle(fontSize: 12),
                ),
              ),
              Utils.verticalSpace(12.0),
            ],
          ),
        ),
      ),
    );
  }
}

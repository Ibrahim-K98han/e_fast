import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/utils/utils.dart';
import 'package:e_fast/screen/widgets/custom_appbar.dart';
import 'package:e_fast/screen/widgets/custom_text.dart';
import 'package:e_fast/screen/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class AddBalanceScreen extends StatelessWidget {
  const AddBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: CustomAppBar(title: 'Bill Payment'),
      bottomNavigationBar: Container(
        padding: Utils.symmetric(v: 16.0),
        decoration: BoxDecoration(color: whiteColor),
        child: PrimaryButton(
          bgColor: grayColor.withOpacity(0.5),
          text: 'Proceed',
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: Utils.symmetric(v: 16.0),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  children: [
                    CustomText(
                      text: 'Your Due',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    Utils.verticalSpace(8.0),
                    CustomText(
                      text: '0.0',
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.brown,
                    ),
                    Utils.verticalSpace(8.0),
                    CustomText(
                      text: 'You need to pay this amount to Steadfast',
                    ),
                  ],
                ),
              ),
              Utils.verticalSpace(16.0),
              Container(
                padding: Utils.symmetric(v: 16.0),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    CustomText(
                      text: 'Enter Amount',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    Utils.verticalSpace(12.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Amount',
                        labelText: 'Enter Amount',
                        labelStyle: TextStyle(color: grayColor, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

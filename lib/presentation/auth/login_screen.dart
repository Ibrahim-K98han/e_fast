import 'package:e_fast/presentation/auth/component/remember_component.dart';
import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:e_fast/presentation/widgets/primary_button.dart';
import 'package:e_fast/routes/route_name.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: Utils.symmetric(),
        child: Column(
          // mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            // Utils.verticalSpace(180.0),
            Expanded(
              child: SingleChildScrollView(
                // keyboardDismissBehavior:
                //     ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  children: [
                    Utils.verticalSpace(180.0),
                    CustomText(
                      text: 'Login',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    Utils.verticalSpace(40.0),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Email Address'),
                    ),
                    Utils.verticalSpace(16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                      obscureText: true,
                    ),
                    _buildRemember(context),
                    Utils.verticalSpace(30.0),
                    PrimaryButton(
                      text: 'Login',
                      onPressed: () {
                        Navigator.pushNamed(context, RouteNames.mainScreen);
                      },
                      borderRadiusSize: 4.0,
                    ),
                    Utils.verticalSpace(20.0),
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        CustomText(text: 'Own a Business? '),
                        CustomText(
                          text: 'Become Merchant',
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: Utils.only(bottom: 40.0),
              child: CustomText(
                textAlign: .center,
                text:
                    'Buy Login you agree to the terms of Service and Data Processing Agreement ',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRemember(BuildContext context) {
    return Padding(
      padding: Utils.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Row(
            children: [
              RememberComponent(),
              CustomText(
                text: 'Remember me',
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: blackColor,
                height: 1.6,
              ),
            ],
          ),
          GestureDetector(
            // onTap:
            //     () => Navigator.pushNamed(
            //       context,
            //       RouteNames.verifyIdentityScreen,
            //     ),
            child: CustomText(
              text: 'Forgot Password',
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: blackColor,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

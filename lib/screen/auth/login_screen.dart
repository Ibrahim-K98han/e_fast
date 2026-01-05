import 'package:e_fast/controllers/auth_controller.dart';
import 'package:e_fast/screen/auth/component/remember_component.dart';
import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/utils/size_config.dart';
import 'package:e_fast/screen/utils/utils.dart';
import 'package:e_fast/screen/widgets/custom_text.dart';
import 'package:e_fast/screen/widgets/primary_button.dart';
import 'package:e_fast/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = true;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  AuthController authController = AuthController();
  @override
  Widget build(BuildContext context) {
    SizeConfigCustom sizeConfig = SizeConfigCustom();
    sizeConfig.init(context);
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (auth) => Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: Utils.symmetric(),
          child: Column(
            crossAxisAlignment: .center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
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
                          controller: _emailController,
                          validator: (value) {
                            if (_emailController.text.isEmpty) {
                              return "this_field_can_t_be_empty".tr;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                          ),
                        ),
                        Utils.verticalSpace(16.0),
                        TextFormField(
                          showCursor: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: Icon(Icons.visibility_off),
                          ),
                          obscureText: true,
                          controller: _passwordController,
                          validator: (value) {
                            if (_passwordController.text.isEmpty) {
                              return "this_field_can_t_be_empty".tr;
                            }
                            return null;
                          },
                        ),
                        _buildRemember(context),
                        Utils.verticalSpace(30.0),
                        PrimaryButton(
                          text: 'Login',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              auth.loginOnTap(
                                email: _emailController.text.toString().trim(),
                                pass: _passwordController.text
                                    .toString()
                                    .trim(),
                              );
                            }
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

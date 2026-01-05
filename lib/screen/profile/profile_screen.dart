import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/utils/utils.dart';
import 'package:e_fast/screen/widgets/custom_appbar.dart';
import 'package:e_fast/screen/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: CustomAppBar(title: 'Profile', fontSize: 20),
      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: Column(
          children: [
            Container(
              padding: Utils.symmetric(v: 20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Container(
                    padding: Utils.all(value: 10.0),
                    decoration: BoxDecoration(
                      color: grayColor.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.person, size: 40, color: whiteColor),
                  ),
                  Utils.verticalSpace(6.0),
                  CustomText(text: 'nurul Alam', fontWeight: FontWeight.w600),
                  Utils.verticalSpace(8.0),
                  CustomText(text: 'ID 1802598'),
                ],
              ),
            ),

            Utils.verticalSpace(18),
            Container(
              padding: Utils.symmetric(h: 10.0, v: 8.0),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = false;
                      });
                    },
                    child: Container(
                      padding: Utils.symmetric(v: 12.0),
                      decoration: BoxDecoration(
                        color: !isSelected ? primaryColor : whiteColor,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: CustomText(
                        text: 'Personal Info',
                        fontSize: 16,
                        color: !isSelected ? whiteColor : grayColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = true;
                      });
                    },
                    child: Container(
                      padding: Utils.symmetric(v: 12.0),
                      decoration: BoxDecoration(
                        color: isSelected ? primaryColor : whiteColor,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: CustomText(
                        text: 'Business Info',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: isSelected ? whiteColor : grayColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Utils.verticalSpace(18),
            isSelected == false
                ? Container(
                    padding: Utils.symmetric(h: 10.0, v: 8.0),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                CustomText(
                                  text: 'Owner Name',
                                  fontWeight: FontWeight.w600,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      size: 18,
                                      color: primaryColor,
                                    ),
                                    Utils.horizontalSpace(4.0),
                                    CustomText(
                                      text: 'Edit',
                                      color: primaryColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Utils.verticalSpace(8.0),
                            CustomText(text: 'nurul Alams'),
                          ],
                        ),
                        Divider(),
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                CustomText(
                                  text: 'Email Address',
                                  fontWeight: FontWeight.w600,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      size: 18,
                                      color: primaryColor,
                                    ),
                                    Utils.horizontalSpace(4.0),
                                    CustomText(
                                      text: 'Edit',
                                      color: primaryColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Utils.verticalSpace(8.0),
                            CustomText(text: 'nurulalam@gmail.com'),
                          ],
                        ),
                        Divider(),
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                CustomText(
                                  text: 'Secondary Contact Number',
                                  fontWeight: FontWeight.w600,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      size: 18,
                                      color: primaryColor,
                                    ),
                                    Utils.horizontalSpace(4.0),
                                    CustomText(
                                      text: 'Edit',
                                      color: primaryColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Utils.verticalSpace(8.0),
                            CustomText(text: '01335142777'),
                          ],
                        ),
                      ],
                    ),
                  )
                : Container(
                    padding: Utils.symmetric(h: 10.0, v: 8.0),
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
                              text: 'Business Name',
                              fontWeight: FontWeight.w600,
                            ),
                            Row(
                              children: [
                                Icon(Icons.edit, size: 18, color: primaryColor),
                                Utils.horizontalSpace(4.0),
                                CustomText(
                                  text: 'Edit',
                                  color: primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ],
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

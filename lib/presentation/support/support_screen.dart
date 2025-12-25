import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_appbar.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: CustomAppBar(title: 'Support'),
      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            CustomText(text: 'For any query or help, please reach out to us'),
            Utils.verticalSpace(14.0),
            Container(
              padding: Utils.symmetric(h: 14.0, v: 10.0),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  CustomText(
                    text: 'Open a Support Ticket',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Utils.verticalSpace(8.0),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      CustomText(
                        text: 'Book an instant support on specific issues',
                        fontSize: 12,
                      ),

                      Container(
                        padding: Utils.all(value: 8.0),
                        decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.message,
                          color: primaryColor,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Utils.verticalSpace(14.0),
            Container(
              padding: Utils.symmetric(h: 14.0, v: 10.0),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  CustomText(
                    text: 'Call Us',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Utils.verticalSpace(8.0),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomText(
                            text: '09678-045045',
                            fontWeight: FontWeight.w600,
                          ),
                          Utils.horizontalSpace(4.0),
                          Container(
                            padding: Utils.all(value: 4.0),
                            decoration: BoxDecoration(color: primaryColor),
                            child: Icon(
                              Icons.call,
                              color: whiteColor,
                              size: 14,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: Utils.all(value: 8.0),
                        decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.headphones,
                          color: primaryColor,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  Utils.verticalSpace(8.0),
                  Row(
                    children: [
                      CustomText(
                        text: '09678-045045',
                        fontWeight: FontWeight.w600,
                      ),
                      Utils.horizontalSpace(4.0),
                      Container(
                        padding: Utils.all(value: 4.0),
                        decoration: BoxDecoration(color: primaryColor),
                        child: Icon(Icons.call, color: whiteColor, size: 14),
                      ),
                    ],
                  ),
                  Utils.verticalSpace(8.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

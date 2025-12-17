import 'dart:ui' as BorderType;

import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class BalanceDetailsScreen extends StatelessWidget {
  const BalanceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 40,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: grayColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Center(
              child: CustomText(text: 'Payment Request', color: whiteColor),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: false,
        iconTheme: IconThemeData(color: whiteColor),
        backgroundColor: primaryColor,
        title: CustomText(text: 'Balance Details', color: whiteColor),
      ),
      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 44),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: const [
                  CustomText(
                    text: "My Wallet",
                    fontSize: 18,
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 8),
                  CustomText(
                    text: "৳0",
                    fontSize: 36,
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 12),
                  CustomText(
                    text: "You can request payment for this Amount",
                    fontSize: 12,
                    color: whiteColor,
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Container(
              padding: Utils.symmetric(h: 10.0, v: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 40,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Balance Summary",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 16),

                  _summaryRow("Amount Delivered", "৳0"),
                  _summaryRow("Payable Delivery Charge", "৳0"),
                  _summaryRow("Sub-Total", "৳0"),
                  _summaryRow("COD Charge", "৳0"),

                  const SizedBox(height: 12),
                  const DottedLine(
                    dashColor: Colors.grey,
                    dashLength: 6,
                    dashGapLength: 4,
                    lineThickness: 1,
                  ),

                  _summaryRow("Total", "৳0", isBold: true),

                  const SizedBox(height: 16),

                  DottedBorder(
                    color: Color(0xFF6FC6B3),
                    strokeWidth: 1.2,
                    dashPattern: const [6, 4],
                    radius: const Radius.circular(10),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6F6F2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        "Clearable Consignments: 0",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0B8F6A),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // 🔹 Reusable Row Widget
  Widget _summaryRow(String title, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
              fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

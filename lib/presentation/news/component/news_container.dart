import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Utils.symmetric(h: 14.0, v: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF4F7FA)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          CustomText(
            text:
                'মডারেটর রোলস এন্ড পার্মিশনের গুরুত্বপূর্ন আপডেটস এসেছে। দয়া করে মডারেটা অপশন চেক করুন।',
            fontWeight: FontWeight.w500,
          ),
          Utils.verticalSpace(8.0),
          CustomText(
            text: 'Dec 4, 2025',
            color: grayColor.withOpacity(0.8),
            fontSize: 12,
          ),
          Utils.verticalSpace(8.0),
          CustomText(
            text:
                'মডারেটর রোলস এন্ড পার্মিশনের গুরুত্বপূর্ন আপডেটস এসেছে। দয়া করে মডারেটা অপশন চেক করুন।',
            color: grayColor.withOpacity(0.8),
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}

import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.fontSize = 14});
  final String title;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: primaryColor,
      centerTitle: false,
      title: CustomText(text: title, color: whiteColor, fontSize: fontSize!),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Utils.vSize(70.0));
}

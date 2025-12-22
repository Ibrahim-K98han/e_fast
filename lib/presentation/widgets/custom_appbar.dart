import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: primaryColor,
      centerTitle: false,
      title: CustomText(text: title, color: whiteColor),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Utils.vSize(70.0));
}

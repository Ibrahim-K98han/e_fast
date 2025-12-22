import 'package:flutter/material.dart';
import '../utils/utils.dart';

class CustomTextInput extends StatelessWidget {
  final String label;
  final Widget child;
  final double bottomSpace;

  const CustomTextInput({
    super.key,
    required this.label,
    required this.child,
    this.bottomSpace = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [child, Utils.verticalSpace(bottomSpace)],
    );
  }
}

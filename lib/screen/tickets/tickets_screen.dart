import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/widgets/custom_appbar.dart';
import 'package:e_fast/screen/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Tickets'),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50.0),
        ),
        child: Icon(Icons.add, color: whiteColor),
        onPressed: () {},
      ),
      body: Center(child: CustomText(text: 'No Tickets found')),
    );
  }
}

import 'package:e_fast/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(title: 'Payment'));
  }
}

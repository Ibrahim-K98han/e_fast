import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_appbar.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PricingScreen extends StatefulWidget {
  const PricingScreen({super.key});

  @override
  State<PricingScreen> createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  String? selectedFrom;
  String? selectedDestination;
  String? selectedDeliveryType;
  String? selectedDeliveryOption;
  final TextEditingController weightController = TextEditingController(
    text: '0.15',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: CustomAppBar(title: 'Pricing'),
      body: SingleChildScrollView(
        padding: Utils.symmetric(h: 16.0, v: 16.0),
        child: Column(
          children: [
            Container(
              padding: Utils.symmetric(h: 20.0, v: 24.0),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  CustomText(
                    text: 'Calculate Delivery charge',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  Utils.verticalSpace(8.0),
                  CustomText(
                    text: 'You can Calculate your delivery charge from here',
                    fontSize: 14,
                  ),
                  Utils.verticalSpace(20.0),

                  // From Dropdown
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'From',
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                    value: selectedFrom,
                    items: [],
                    onChanged: (value) {
                      setState(() {
                        selectedFrom = value;
                      });
                    },
                  ),
                  Utils.verticalSpace(16.0),

                  // Destination Dropdown
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Destination',
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                    value: selectedDestination,
                    items: [],
                    onChanged: (value) {
                      setState(() {
                        selectedDestination = value;
                      });
                    },
                  ),
                  Utils.verticalSpace(16.0),

                  // Regular Dropdown
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                    value: 'Regular',
                    items: [
                      DropdownMenuItem(
                        value: 'Regular',
                        child: Text('Regular'),
                      ),
                      DropdownMenuItem(
                        value: 'Express',
                        child: Text('Express'),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedDeliveryType = value;
                      });
                    },
                  ),
                  Utils.verticalSpace(16.0),

                  // Regular Delivery Dropdown
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                    value: 'Regular Delivery',
                    items: [
                      DropdownMenuItem(
                        value: 'Regular Delivery',
                        child: Text('Regular Delivery'),
                      ),
                      DropdownMenuItem(
                        value: 'Express Delivery',
                        child: Text('Express Delivery'),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedDeliveryOption = value;
                      });
                    },
                  ),
                  Utils.verticalSpace(16.0),

                  TextFormField(decoration: InputDecoration(hintText: '0.15')),
                ],
              ),
            ),
            Utils.verticalSpace(16.0),

            // Charges Information Container
            Container(
              width: double.infinity,
              padding: Utils.symmetric(h: 20.0, v: 20.0),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 10),
                      CustomText(text: 'COD Charge: ', fontSize: 14),
                      CustomText(
                        text: '0%',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Utils.verticalSpace(12.0),
                  Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 10),
                      CustomText(
                        text: 'Weight charge (after 1KG): ',
                        fontSize: 14,
                      ),
                      CustomText(
                        text: '৳20',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Utils.verticalSpace(12.0),
                  Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 10),
                      CustomText(
                        text: 'Charges are VAT & TAX included',
                        fontSize: 14,
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

  @override
  void dispose() {
    weightController.dispose();
    super.dispose();
  }
}

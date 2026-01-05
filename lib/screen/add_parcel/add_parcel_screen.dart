import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/utils/utils.dart';
import 'package:e_fast/screen/widgets/custom_text.dart';
import 'package:e_fast/screen/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class AddParcelScreen extends StatefulWidget {
  const AddParcelScreen({super.key});

  @override
  State<AddParcelScreen> createState() => _AddParcelScreenState();
}

class _AddParcelScreenState extends State<AddParcelScreen> {
  String _groupValue = "home";
  String _disable = "no";
  String _exchange = "no";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: false,
        iconTheme: IconThemeData(color: whiteColor),
        backgroundColor: primaryColor,
        title: CustomText(text: 'Add Parcel', color: whiteColor),
      ),
      bottomNavigationBar: Container(
        padding: Utils.symmetric(v: 12.0),
        decoration: BoxDecoration(color: whiteColor),
        child: PrimaryButton(
          bgColor: grayColor.withOpacity(0.5),
          text: 'Submit',
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: Utils.symmetric(h: 10.0, v: 10.0),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Service Type: Standard',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),

                    Utils.verticalSpace(8.0),

                    CustomText(
                      text: 'Delivery Type',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),

                    Utils.verticalSpace(4.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<String>(
                          value: "home",
                          groupValue: _groupValue,
                          activeColor: primaryColor,
                          materialTapTargetSize: MaterialTapTargetSize
                              .shrinkWrap, // 👈 extra space remove
                          visualDensity: VisualDensity.compact, // 👈 tight
                          onChanged: (value) {
                            setState(() {
                              _groupValue = value!;
                            });
                          },
                        ),
                        const CustomText(
                          text: "Home Delivery",
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),

                        Utils.horizontalSpace(12),

                        Radio<String>(
                          value: "point",
                          groupValue: _groupValue,
                          activeColor: primaryColor,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                          onChanged: (value) {
                            setState(() {
                              _groupValue = value!;
                            });
                          },
                        ),
                        const CustomText(
                          text: "Point Delivery",
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Utils.verticalSpace(10.0),
              Container(
                padding: Utils.symmetric(h: 10.0, v: 10.0),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    CustomText(
                      text: 'Recipient Info',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    Utils.verticalSpace(8.0),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Contact Number'),
                    ),
                    Utils.verticalSpace(8.0),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Name'),
                    ),

                    Utils.verticalSpace(8.0),
                    TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(hintText: 'Address'),
                    ),

                    Utils.verticalSpace(8.0),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        CustomText(
                          text: 'Disable District Field?',
                          fontWeight: FontWeight.w500,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio<String>(
                              value: "no",
                              groupValue: _disable,
                              activeColor: primaryColor,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                              onChanged: (value) {
                                setState(() {
                                  _disable = value!;
                                });
                              },
                            ),
                            const CustomText(
                              text: "No",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),

                            Utils.horizontalSpace(12),

                            Radio<String>(
                              value: "yes",
                              groupValue: _disable,
                              activeColor: primaryColor,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                              onChanged: (value) {
                                setState(() {
                                  _disable = value!;
                                });
                              },
                            ),
                            const CustomText(
                              text: "Yes",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Utils.verticalSpace(8.0),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'District'),
                    ),
                  ],
                ),
              ),
              Utils.verticalSpace(10.0),
              Container(
                padding: Utils.symmetric(h: 10.0, v: 10.0),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    CustomText(
                      text: 'Parcel Info',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    Utils.verticalSpace(8.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Collection Amount',
                      ),
                    ),
                    Utils.verticalSpace(8.0),
                    TextFormField(decoration: InputDecoration(hintText: '0')),
                    Utils.verticalSpace(8.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Invoice (Optional)',
                      ),
                    ),
                    Utils.verticalSpace(8.0),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Note (Optional)'),
                    ),
                    Utils.verticalSpace(8.0),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        CustomText(
                          text: 'Disable District Field?',
                          fontWeight: FontWeight.w500,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio<String>(
                              value: "no",
                              groupValue: _exchange,
                              activeColor: primaryColor,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                              onChanged: (value) {
                                setState(() {
                                  _exchange = value!;
                                });
                              },
                            ),
                            const CustomText(
                              text: "No",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),

                            Utils.horizontalSpace(12),

                            Radio<String>(
                              value: "yes",
                              groupValue: _exchange,
                              activeColor: primaryColor,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                              onChanged: (value) {
                                setState(() {
                                  _exchange = value!;
                                });
                              },
                            ),
                            const CustomText(
                              text: "Yes",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
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
      ),
    );
  }
}

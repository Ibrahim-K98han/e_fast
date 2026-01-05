import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/widgets/custom_text.dart';
import 'package:e_fast/routes/route_name.dart';
import 'package:flutter/material.dart';

class RecentActivityContainer extends StatefulWidget {
  const RecentActivityContainer({Key? key}) : super(key: key);

  @override
  State<RecentActivityContainer> createState() =>
      _RecentActivityContainerState();
}

class _RecentActivityContainerState extends State<RecentActivityContainer> {
  bool showAll = true;

  final List<ActivityItem> activities = [
    ActivityItem(
      phoneNumber: '01701739220',
      name: 'Md.Saiful Islam',
      description:
          'অর্ডার করে আর খবর নাই, ফোন করলে তাও ধরে না । নাম্বার ব্লক করে দেয়। পার্সেল অর্ডার করলে সোজা না করে দিবেন।',
      timestamp: 'Dec 25, 2025, 07:01 PM',
    ),
    ActivityItem(
      phoneNumber: '01518399046',
      name: 'Masud',
      description:
          'অর্ডার করে আর খবর নাই, ফোন করলে তাও ধরে না । নাম্বার ব্লক করে দেয়। পার্সেল অর্ডার করলে সোজা না করে দিবেন।',
      timestamp: 'Dec 25, 2025, 07:00 PM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                const CustomText(
                  text: 'Recent Activity',
                  fontWeight: FontWeight.w500,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.addFraudScreen);
                  },
                  child: CustomText(
                    text: 'Add New',
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // Tab Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          showAll = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: showAll ? primaryColor : Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        child: CustomText(
                          text: 'All',
                          color: showAll ? whiteColor : blackColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          showAll = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: !showAll ? primaryColor : Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        child: CustomText(
                          text: 'My Entries',
                          color: !showAll ? whiteColor : blackColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Activity List
          Expanded(
            child: showAll
                ? ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemCount: activities.length,
                    itemBuilder: (context, index) {
                      final activity = activities[index];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: grayColor.withOpacity(0.1)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: activity.phoneNumber,
                              fontWeight: FontWeight.w500,
                            ),

                            CustomText(
                              text: activity.name,
                              color: grayColor.withOpacity(0.5),
                            ),
                            const SizedBox(height: 8),
                            CustomText(text: activity.description),
                            const SizedBox(height: 8),
                            CustomText(
                              text: activity.timestamp,
                              fontSize: 12,
                              color: grayColor.withOpacity(0.5),
                            ),
                          ],
                        ),
                      );
                    },
                  )
                : Center(child: CustomText(text: 'No Data Found')),
          ),
        ],
      ),
    );
  }
}

class ActivityItem {
  final String phoneNumber;
  final String name;
  final String description;
  final String timestamp;

  ActivityItem({
    required this.phoneNumber,
    required this.name,
    required this.description,
    required this.timestamp,
  });
}

import 'package:e_fast/screen/utils/app_color.dart';
import 'package:e_fast/screen/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class CancellationScreen extends StatelessWidget {
  const CancellationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F7FA),
        appBar: CustomAppBar(title: 'Cancellation Requests'),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: TabBar(
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: primaryColor,
                indicatorWeight: 3,
                labelColor: primaryColor,
                dividerColor: Colors.transparent,
                padding: EdgeInsets.zero,
                unselectedLabelColor: Colors.black54,
                tabs: [
                  Tab(text: 'Pending'),
                  Tab(text: 'Confirmed'),
                  Tab(text: 'Resend Reqst'),
                  Tab(text: 'Cancelled'),
                  Tab(text: 'Recent'),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('No Confirmed parcel found!')),
                  Center(child: Text('No Resend request found!')),
                  Center(child: Text('No Resend request found!')),
                  Center(child: Text('No Resend request found!')),
                  Center(child: Text('No Resend request found!')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

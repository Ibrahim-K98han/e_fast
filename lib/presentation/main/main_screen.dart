

import 'package:e_fast/presentation/home/home_screen.dart';
import 'package:e_fast/presentation/main/component/bottom_navigation_bar%20copy.dart';
import 'package:e_fast/presentation/main/component/main_controller.dart';
import 'package:e_fast/presentation/news/news_screen.dart';
import 'package:e_fast/presentation/parcel/parcel_screen.dart';
import 'package:e_fast/presentation/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _homeController = MainController();
  late List<Widget> screenList;
  bool isUser = true;

  @override
  void initState() {
    super.initState();
    screenList = [
      const HomeScreen(),
      const ParcelScreen(),
      const NewsScreen(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //exitApp(context);
        return true;
      },
      child: Scaffold(
        body: StreamBuilder<int>(
          initialData: 0,
          stream: _homeController.naveListener.stream,
          builder: (context, AsyncSnapshot<int> snapshot) {
            int item = snapshot.data ?? 0;
            return screenList[item];
          },
        ),
        bottomNavigationBar: const MyBottomNavigationBar(),
      ),
    );
  }
}
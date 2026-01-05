import 'package:e_fast/screen/home/home_screen.dart';
import 'package:e_fast/screen/news/news_screen.dart';
import 'package:e_fast/screen/parcel/parcel_screen.dart';
import 'package:e_fast/screen/profile/profile_screen.dart';
import 'package:e_fast/screen/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      backgroundColor: Colors.white,
      navBarHeight: 60,
      screens: const [
        HomeScreen(),
        ParcelScreen(),
        NewsScreen(),
        ProfileScreen(),
      ],
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: "Home",
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.inventory_2_outlined),
          title: "Parcels",
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.article_outlined),
          title: "News",
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person_outline),
          title: "Profile",
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: Colors.grey,
        ),
      ],
      navBarStyle: NavBarStyle.style4,
    );
  }
}

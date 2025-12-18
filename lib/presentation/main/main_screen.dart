import 'package:e_fast/presentation/home/home_screen.dart';
import 'package:e_fast/presentation/news/news_screen.dart';
import 'package:e_fast/presentation/parcel/parcel_screen.dart';
import 'package:e_fast/presentation/profile/profile_screen.dart';
import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      backgroundColor: Colors.white,
      avoidBottomPadding: true,
      tabs: [
        PersistentTabConfig(
          screen: HomeScreen(),
          item: ItemConfig(
            activeForegroundColor: primaryColor,
            activeColorSecondary: primaryColor,
            icon: Icon(Icons.home),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: ParcelScreen(),
          item: ItemConfig(
            activeForegroundColor: primaryColor,
            activeColorSecondary: primaryColor,
            icon: Icon(Icons.inventory_2_outlined),
            title: "Parcels",
          ),
        ),
        PersistentTabConfig(
          screen: NewsScreen(),
          item: ItemConfig(
            activeForegroundColor: primaryColor,
            activeColorSecondary: primaryColor,
            icon: Icon(Icons.article_outlined),
            title: "News",
          ),
        ),
        PersistentTabConfig(
          screen: ProfileScreen(),
          item: ItemConfig(
            activeForegroundColor: primaryColor,
            activeColorSecondary: primaryColor,
            icon: Icon(Icons.person_outline),
            title: "Profile",
          ),
        ),
      ],

      navBarBuilder: (navBarConfig) => Style4BottomNavBar(
        height: 60,
        navBarDecoration: NavBarDecoration(padding: Utils.symmetric(h: 10.0)),
        navBarConfig: navBarConfig,
      ),
    );
  }
}

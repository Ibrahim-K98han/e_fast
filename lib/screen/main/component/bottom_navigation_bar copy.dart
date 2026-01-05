import 'dart:io';
import 'package:e_fast/screen/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'main_controller.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = MainController();
    return Container(
      height: Platform.isAndroid ? 95 : 95,
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 40,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: StreamBuilder(
          initialData: 0,
          stream: controller.naveListener.stream,
          builder: (_, AsyncSnapshot<int> index) {
            int selectedIndex = index.data ?? 0;
            return BottomNavigationBar(
              selectedItemColor: primaryColor,
              unselectedItemColor: grayColor.withOpacity(0.5),
              type: BottomNavigationBarType.fixed,

              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  tooltip: 'Home',
                  icon: _navIcon(
                    icon: Icons.home,
                    color: grayColor.withOpacity(0.5),
                  ),
                  activeIcon: _navIcon(
                    icon: Icons.home,
                    color: primaryColor,
                    isSelected: true,
                  ),
                  label: "Home",
                ),

                BottomNavigationBarItem(
                  tooltip: "Parcels",
                  icon: _navIcon(
                    icon: Icons.inventory_2_outlined,
                    color: grayColor.withOpacity(0.5),
                  ),
                  activeIcon: _navIcon(
                    icon: Icons.inventory_2_outlined,
                    color: primaryColor,
                    isSelected: true,
                  ),
                  label: 'Parcels',
                ),

                BottomNavigationBarItem(
                  tooltip: 'News',
                  icon: _navIcon(
                    icon: Icons.article_outlined,
                    color: grayColor.withOpacity(0.5),
                  ),
                  activeIcon: _navIcon(
                    icon: Icons.article_outlined,
                    color: primaryColor,
                    isSelected: true,
                  ),
                  label: 'News',
                ),

                BottomNavigationBarItem(
                  tooltip: 'Profile',
                  icon: _navIcon(
                    icon: Icons.person_outline,
                    color: grayColor.withOpacity(0.5),
                  ),
                  activeIcon: _navIcon(
                    icon: Icons.person_outline,
                    color: primaryColor,
                    isSelected: true,
                  ),
                  label: 'Profile',
                ),
              ],
              // type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              onTap: (int index) {
                controller.naveListener.sink.add(index);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _navIcon({
    required IconData icon,
    required Color color,
    bool isSelected = false,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 4,
          width: isSelected ? 60 : 0,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),

        Icon(icon, color: color, size: 24),
      ],
    );
  }
}

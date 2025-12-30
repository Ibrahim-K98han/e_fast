import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: whiteColor,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: whiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: grayColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(Icons.person, size: 40, color: whiteColor),
                ),
                const SizedBox(height: 12),
                const Text(
                  'nurul Alam',
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'ID 1802598',
                  style: TextStyle(
                    color: blackColor.withOpacity(0.5),
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Verify Profile',
                  style: TextStyle(color: primaryColor, fontSize: 14),
                ),
              ],
            ),
          ),

          _buildDrawerItem(Icons.home, 'Home', () => Navigator.pop(context)),
          Padding(
            padding: Utils.symmetric(),
            child: Divider(height: 1, color: grayColor.withOpacity(0.2)),
          ),
          _buildDrawerItem(Icons.person, 'Profile', () {}),
          Padding(
            padding: Utils.symmetric(),
            child: Divider(height: 1, color: grayColor.withOpacity(0.2)),
          ),
          _buildDrawerItem(Icons.inventory_2, 'My Parcels', () {}),
          Padding(
            padding: Utils.symmetric(),
            child: Divider(height: 1, color: grayColor.withOpacity(0.2)),
          ),
          _buildDrawerItem(Icons.account_balance_wallet, 'Wallet', () {}),
          Padding(
            padding: Utils.symmetric(),
            child: Divider(height: 1, color: grayColor.withOpacity(0.2)),
          ),
          _buildDrawerItem(Icons.history, 'Order History', () {}),
          Padding(
            padding: Utils.symmetric(),
            child: Divider(height: 1, color: grayColor.withOpacity(0.2)),
          ),
          _buildDrawerItem(Icons.notifications, 'Notifications', () {}),
          Padding(
            padding: Utils.symmetric(),
            child: Divider(height: 1, color: grayColor.withOpacity(0.2)),
          ),
          _buildDrawerItem(Icons.settings, 'Settings', () {}),

          Padding(
            padding: Utils.symmetric(v: 12.0),
            child: CustomText(text: 'Help & Legal'),
          ),
          _buildDrawerItem(Icons.help_outline, 'Help & Support', () {}),
          Padding(
            padding: Utils.symmetric(),
            child: Divider(height: 1, color: grayColor.withOpacity(0.2)),
          ),
          _buildDrawerItem(Icons.info_outline, 'About', () {}),
          Padding(
            padding: Utils.symmetric(),
            child: Divider(height: 1, color: grayColor.withOpacity(0.2)),
          ),
          _buildDrawerItem(Icons.logout, 'Logout', () {}),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: grayColor.withOpacity(0.6)),
      title: Text(title),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
      ), // optional: remove extra horizontal padding
    );
  }
}

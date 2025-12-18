import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(0),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF14B8A6), Color(0xFF0F766E)],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 40,
                    color: Color(0xFF14B8A6),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'user@example.com',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          _buildDrawerItem(Icons.home, 'Home', () => Navigator.pop(context)),
          _buildDrawerItem(Icons.person, 'Profile', () {}),
          _buildDrawerItem(Icons.inventory_2, 'My Parcels', () {}),
          _buildDrawerItem(Icons.account_balance_wallet, 'Wallet', () {}),
          _buildDrawerItem(Icons.history, 'Order History', () {}),
          _buildDrawerItem(Icons.notifications, 'Notifications', () {}),
          const Divider(),
          _buildDrawerItem(Icons.settings, 'Settings', () {}),
          _buildDrawerItem(Icons.help_outline, 'Help & Support', () {}),
          _buildDrawerItem(Icons.info_outline, 'About', () {}),
          _buildDrawerItem(Icons.logout, 'Logout', () {}),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF14B8A6)),
      title: Text(title),
      onTap: onTap,
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
    );
  }
}

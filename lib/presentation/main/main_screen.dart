import 'package:e_fast/presentation/main/component/banner_slider.dart';
import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/app_image.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_images.dart';
import 'package:e_fast/routes/route_name.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool showBalance = false;
  bool showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _buildDrawer(),
      body: Stack(
        children: [
          Container(
            height: 150,
            color: primaryColor,
            child: Column(
              children: [
                Padding(
                  padding: Utils.only(left: 20.0, right: 20.0, top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => _scaffoldKey.currentState?.openDrawer(),
                        child: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showBalance = true;
                                  showDetails = true;
                                });

                                Future.delayed(const Duration(seconds: 5), () {
                                  if (mounted) {
                                    setState(() {
                                      showBalance = false;
                                      showDetails = false;
                                    });
                                  }
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '৳',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),

                                  AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 400),
                                    transitionBuilder: (child, animation) {
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                    child: Text(
                                      showBalance ? '100' : 'Tap for Balance',
                                      key: ValueKey(showBalance),
                                      style: const TextStyle(
                                        color: primaryColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 500),
                              transitionBuilder: (child, animation) {
                                final slide = Tween<Offset>(
                                  begin: const Offset(0.3, 0),
                                  end: Offset.zero,
                                ).animate(animation);

                                return FadeTransition(
                                  opacity: animation,
                                  child: SlideTransition(
                                    position: slide,
                                    child: child,
                                  ),
                                );
                              },
                              child: showDetails
                                  ? Padding(
                                      key: const ValueKey("details"),
                                      padding: const EdgeInsets.only(left: 12),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context,
                                            RouteNames.balanceDetailsScreen,
                                          );
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 6,
                                          ),
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: const Text(
                                            "Details",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                            ),
                          ],
                        ),
                      ),

                      Row(
                        children: const [
                          Icon(Icons.search, color: Colors.white, size: 24),
                          SizedBox(width: 12),
                          Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                            size: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: Utils.only(top: 110.0),
            child: Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Utils.verticalSpace(20.0),
                    Padding(
                      padding: Utils.only(left: 20.0, right: 20.0),
                      child: BannerSlider(),
                    ),

                    _buildHomeContent(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey[200]!)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(Icons.home, 'Home', 0),
                _buildNavItem(Icons.inventory_2_outlined, 'Parcels', 1),
                _buildNavItem(Icons.article_outlined, 'News', 2),
                _buildNavItem(Icons.person_outline, 'Profile', 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
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

  Widget _buildHomeContent() {
    return Padding(
      padding: Utils.only(top: 10.0),
      child: Container(
        color: grayColor.withOpacity(0.1),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Quick Actions
            Padding(
              padding: Utils.symmetric(),
              child: Row(
                children: [
                  Expanded(
                    child: _buildMenuItem(
                      Icons.add_box_outlined,
                      'Add\nParcel',
                      const Color(0xFF14B8A6),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildMenuItem(
                      Icons.inventory_2_outlined,
                      'Pickup\nRequest',
                      const Color(0xFFF97316),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildMenuItem(
                      Icons.flash_on_outlined,
                      'Express\nDelivery',
                      const Color(0xFF3B82F6),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildMenuItem(
                      Icons.location_on_outlined,
                      'Pick &\nDrop',
                      const Color(0xFFEF4444),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            Padding(
              padding: Utils.symmetric(v: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: _buildMenuItem(
                            Icons.inventory_outlined,
                            'Parcels',
                            const Color(0xFFF97316),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.description_outlined,
                            'Summary',
                            const Color(0xFF14B8A6),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.account_balance_wallet_outlined,
                            'Payments',
                            const Color(0xFF14B8A6),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.add_circle_outline,
                            'Add Balance',
                            const Color(0xFF10B981),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: _buildMenuItem(
                            Icons.schedule_outlined,
                            'Latest RTNs',
                            const Color(0xFFF97316),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.cancel_outlined,
                            'Cancellation',
                            const Color(0xFFEF4444),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.warning_amber_outlined,
                            'Fraud Check',
                            const Color(0xFFDC2626),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.confirmation_number_outlined,
                            'Tickets',
                            const Color(0xFFF97316),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: Utils.symmetric(v: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: _buildMenuItem(
                        Icons.support_agent_outlined,
                        'Support',
                        const Color(0xFF3B82F6),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildMenuItem(
                        Icons.place_outlined,
                        'Pickup Points',
                        const Color(0xFF14B8A6),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildMenuItem(
                        Icons.public_outlined,
                        'Coverage',
                        const Color(0xFF2563EB),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildMenuItem(
                        Icons.calculate_outlined,
                        'Pricing',
                        const Color(0xFF9333EA),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),
            Padding(
              padding: Utils.symmetric(),
              child: CustomImage(path: AppImage.banner),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label, Color color) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: Utils.symmetric(h: 4.0, v: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 32),
            const SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[700], fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isActive = _selectedIndex == index;
    return InkWell(
      onTap: () => _onNavItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: isActive ? const EdgeInsets.all(8) : null,
            decoration: isActive
                ? BoxDecoration(
                    color: const Color(0xFF14B8A6),
                    borderRadius: BorderRadius.circular(8),
                  )
                : null,
            child: Icon(
              icon,
              color: isActive ? Colors.white : Colors.grey[400],
              size: 24,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isActive ? const Color(0xFF14B8A6) : Colors.grey[400],
              fontSize: 11,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:e_fast/presentation/add_balance/add_balance_screen.dart';
import 'package:e_fast/presentation/add_parcel/add_parcel_screen.dart';
import 'package:e_fast/presentation/cancellation/cancellation_screen.dart';
import 'package:e_fast/presentation/fraud_check/fraud_check_screen.dart';
import 'package:e_fast/presentation/home/component/custom_drawer.dart';
import 'package:e_fast/presentation/home/component/header_section.dart';
import 'package:e_fast/presentation/main/component/banner_slider.dart';
import 'package:e_fast/presentation/parcel/parcel_screen.dart';
import 'package:e_fast/presentation/payment/payment_screen.dart';
import 'package:e_fast/presentation/pickup/pickup_request.dart';
import 'package:e_fast/presentation/pickup_and_drop/pickup_drop_screen.dart';
import 'package:e_fast/presentation/return_list/returan_list_screen.dart';
import 'package:e_fast/presentation/summary/summary_screen.dart';
import 'package:e_fast/presentation/support/support_screen.dart';
import 'package:e_fast/presentation/tickets/tickets_screen.dart';
import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/app_image.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_images.dart';
import 'package:e_fast/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          Container(
            height: 150,
            color: primaryColor,
            child: Column(
              children: [
                Padding(
                  padding: Utils.only(left: 20.0, right: 20.0, top: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () =>
                                _scaffoldKey.currentState?.openDrawer(),
                            child: const Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          HeaderSection(),
                        ],
                      ),

                      Row(
                        children: const [
                          CustomImage(
                            path: AppImage.notification,
                            width: 20,
                            height: 20,
                            color: whiteColor,
                          ),
                          SizedBox(width: 12),

                          CustomImage(
                            path: AppImage.search,
                            width: 20,
                            height: 20,
                            color: whiteColor,
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
            Padding(
              padding: Utils.symmetric(),
              child: Row(
                children: [
                  Expanded(
                    child: _buildMenuItem(
                      Icons.add_box_outlined,
                      'Add\nParcel',
                      const Color(0xFF14B8A6),
                      Color(0xFF14B8A6).withOpacity(0.1),
                      () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: const AddParcelScreen(),
                          withNavBar: false,
                        );
                      },
                      FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildMenuItem(
                      Icons.inventory_2_outlined,
                      'Pickup\nRequest',
                      const Color(0xFFF97316),
                      Color(0xFFF97316).withOpacity(0.1),
                      () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: const PickupRequest(),
                          withNavBar: false,
                        );
                      },
                      FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildMenuItem(
                      Icons.flash_on_outlined,
                      'Express\nDelivery',
                      const Color(0xFF3B82F6),
                      Color(0xFF3B82F6).withOpacity(0.1),
                      () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: const AddParcelScreen(),
                          withNavBar: false,
                        );
                      },
                      FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildMenuItem(
                      Icons.location_on_outlined,
                      'Pick &\nDrop',
                      const Color(0xFFEF4444),
                      Color(0xFFEF4444).withOpacity(0.1),
                      () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: const PickupDropScreen(),
                          withNavBar: false,
                        );
                      },
                      FontWeight.w500,
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
                            Colors.transparent,
                            () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const ParcelScreen(),
                                withNavBar: false,
                              );
                            },

                            FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.description_outlined,
                            'Summary',
                            const Color(0xFF14B8A6),
                            Colors.transparent,
                            () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const SummaryScreen(),
                                withNavBar: false,
                              );
                            },

                            FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.account_balance_wallet_outlined,
                            'Payments',
                            const Color(0xFF14B8A6),
                            Colors.transparent,
                            () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const PaymentScreen(),
                                withNavBar: false,
                              );
                            },
                            FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.add_circle_outline,
                            'Add Balance',
                            const Color(0xFF10B981),
                            Colors.transparent,
                            () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const AddBalanceScreen(),
                                withNavBar: false,
                              );
                            },
                            FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: _buildMenuItem(
                            Icons.schedule_outlined,
                            'Latest RTNs',
                            const Color(0xFFF97316),
                            Colors.transparent,
                            () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const ReturnListScreen(),
                                withNavBar: false,
                              );
                            },
                            FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.cancel_outlined,
                            'Cancellation',
                            const Color(0xFFEF4444),
                            Colors.transparent,
                            () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const CancellationScreen(),
                                withNavBar: false,
                              );
                            },
                            FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.warning_amber_outlined,
                            'Fraud Check',
                            const Color(0xFFDC2626),
                            Colors.transparent,
                            () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const FraudCheckScreen(),
                                withNavBar: false,
                              );
                            },
                            FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: _buildMenuItem(
                            Icons.confirmation_number_outlined,
                            'Tickets',
                            const Color(0xFFF97316),
                            Colors.transparent,
                            () {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: const TicketsScreen(),
                                withNavBar: false,
                              );
                            },
                            FontWeight.normal,
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
                        Colors.transparent,
                        () {
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: const SupportScreen(),
                            withNavBar: false,
                          );
                        },
                        FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: _buildMenuItem(
                        Icons.place_outlined,
                        'Pickup Points',
                        const Color(0xFF14B8A6),
                        Colors.transparent,
                        () {},
                        FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: _buildMenuItem(
                        Icons.public_outlined,
                        'Coverage',
                        const Color(0xFF2563EB),
                        Colors.transparent,
                        () {},
                        FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: _buildMenuItem(
                        Icons.calculate_outlined,
                        'Pricing',
                        const Color(0xFF9333EA),
                        Colors.transparent,
                        () {},
                        FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
            Padding(
              padding: Utils.symmetric(),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
                height: 50,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: CustomImage(
                  path: AppImage.appLogo,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    IconData icon,
    String label,
    Color color,
    Color bgColor,
    VoidCallback onTap,
    FontWeight fontWeight,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: Utils.symmetric(h: 2.0, v: 8.0),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: .min,
          children: [
            Container(
              padding: Utils.all(value: 3.0),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Icon(icon, color: color, size: 28),
            ),
            const SizedBox(height: 4),
            CustomText(
              text: label,
              textAlign: TextAlign.center,
              fontSize: 12,
              fontWeight: fontWeight,
            ),
          ],
        ),
      ),
    );
  }
}

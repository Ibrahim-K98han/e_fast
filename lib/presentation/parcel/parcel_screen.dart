import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:flutter/material.dart';

class ParcelScreen extends StatelessWidget {
  const ParcelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        elevation: 0,
        title: const Text(
          "Parcel Summary",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Overview title
            Row(
              children: const [
                Icon(Icons.bar_chart, size: 20),
                SizedBox(width: 8),
                Text(
                  "Overview",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // 🔹 Overview cards grid
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 1.8,
              children: const [
                _OverviewCard(
                  title: "Delivered Parcels",
                  color: Color(0xFFDFF9EC),
                ),
                _OverviewCard(
                  title: "Pending Parcels",
                  color: Color(0xFFFFF6BF),
                ),
                _OverviewCard(
                  title: "In review Parcels",
                  color: Color(0xFFE3EFFF),
                ),
                _OverviewCard(
                  title: "Partial Delivered",
                  color: Color(0xFFBFE8DE),
                ),
                _OverviewCard(
                  title: "Waiting Approval",
                  color: Color(0xFFEFEAFF),
                ),
                _OverviewCard(
                  title: "Cancelled parcels",
                  color: Color(0xFFFFE4E1),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 🔹 All Parcels Button
            _ActionButton(title: "All Parcels", onTap: () {}),

            const SizedBox(height: 12),

            // 🔹 Amount Changed Parcels Button
            _ActionButton(title: "Amount Changed Parcels", onTap: () {}),

            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

class _OverviewCard extends StatelessWidget {
  final String title;
  final Color color;

  const _OverviewCard({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _ActionButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

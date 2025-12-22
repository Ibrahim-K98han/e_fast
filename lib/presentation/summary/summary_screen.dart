import 'package:dotted_line/dotted_line.dart';
import 'package:e_fast/presentation/utils/app_color.dart';
import 'package:e_fast/presentation/utils/utils.dart';
import 'package:e_fast/presentation/widgets/custom_appbar.dart';
import 'package:e_fast/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  DateTime startDate = DateTime(2025, 11, 17);
  TimeOfDay startTime = const TimeOfDay(hour: 0, minute: 0);
  DateTime endDate = DateTime(2025, 12, 17);
  TimeOfDay endTime = const TimeOfDay(hour: 23, minute: 59);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Summary'),

      body: Padding(
        padding: Utils.symmetric(v: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: Utils.symmetric(h: 10.0, v: 8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: grayColor.withOpacity(0.5)),
                      ),
                      child: _buildDateTimeRow(
                        date: startDate,
                        time: startTime,
                        onDateTap: () => _selectDate(context, true),
                        onTimeTap: () => _selectTime(context, true),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: grayColor.withOpacity(0.5)),
                      ),
                      child: _buildDateTimeRow(
                        date: endDate,
                        time: endTime,
                        onDateTap: () => _selectDate(context, false),
                        onTimeTap: () => _selectTime(context, false),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    PrimaryButton(text: 'Search', onPressed: () {}),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Parcel Summary Card
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Parcel Summary',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildSummaryRow('Delivered', 0, '৳0'),
                  const SizedBox(height: 8),
                  _buildSummaryRow('Cancelled', 0, '৳0'),
                  const SizedBox(height: 8),
                  _buildSummaryRow('Pending', 0, '৳0'),
                  const SizedBox(height: 8),
                  DottedLine(dashColor: grayColor.withOpacity(0.5)),
                  const SizedBox(height: 8),
                  _buildSummaryRow('Total', 0, '৳0', isTotal: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDateTimeRow({
    required DateTime date,
    required TimeOfDay time,
    required VoidCallback onDateTap,
    required VoidCallback onTimeTap,
  }) {
    final dateStr =
        '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
    final timeStr =
        '${time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod}:${time.minute.toString().padLeft(2, '0')} ${time.period == DayPeriod.am ? 'AM' : 'PM'}';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onDateTap,
              child: Text(
                dateStr,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: onTimeTap,
            child: Row(
              children: [
                Text(
                  timeStr,
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                const SizedBox(width: 12),
                Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.grey[600],
                  size: 22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(
    String label,
    int count,
    String amount, {
    bool isTotal = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$label ($count)',
          style: TextStyle(
            fontSize: isTotal ? 18 : 16,
            fontWeight: isTotal ? FontWeight.w600 : FontWeight.w400,
            color: Colors.black87,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: isTotal ? 18 : 16,
            fontWeight: isTotal ? FontWeight.w600 : FontWeight.w400,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context, bool isStart) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStart ? startDate : endDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          startDate = picked;
        } else {
          endDate = picked;
        }
      });
    }
  }

  Future<void> _selectTime(BuildContext context, bool isStart) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isStart ? startTime : endTime,
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          startTime = picked;
        } else {
          endTime = picked;
        }
      });
    }
  }
}

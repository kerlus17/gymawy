 import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

class AttendanceCalendar extends StatefulWidget {
  const AttendanceCalendar({super.key});

  @override
  State<AttendanceCalendar> createState() => _AttendanceCalendarState();
}

class _AttendanceCalendarState extends State<AttendanceCalendar> {
  DateTime selectedDate = DateTime(2026, 5, 26);

  final DateTime firstDate = DateTime(2026, 1, 1);
  final DateTime lastDate = DateTime(2026, 12, 31);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 37, 110, 206),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: const Color(0xff202936),
          ),
        ),
        child: Column(
          children: [
            // =========================
            // Header
            // =========================
            Row(
              children: [
                // Month
                const Icon(
                  Icons.calendar_month_outlined,
                  color: Color(0xffef3b3b),
                  size: 22,
                ),

                const SizedBox(width: 8),

                Text(
                  'مايو 2026',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Spacer(),

                // Previous
                _ArrowButton(
                  icon: Icons.chevron_right,
                  onTap: () {},
                ),

                const SizedBox(width: 8),

                // Next
                _ArrowButton(
                  icon: Icons.chevron_left,
                  onTap: () {},
                ),
              ],
            ),

            const SizedBox(height: 14),

            // =========================
            // Timeline
            // =========================
            SizedBox(
              height: 95,
              child: EasyDateTimeLinePicker(
                firstDate: firstDate,
                lastDate: lastDate,
                focusedDate: selectedDate,

                currentDate: DateTime.now(),

                locale: const Locale('ar'),

                itemExtent: 135,

                selectionMode: const SelectionMode.autoCenter(),

                onDateChange: (date) {
                  setState(() {
                    selectedDate = date;
                  });
                },

                headerOptions: const HeaderOptions(
                  headerType: HeaderType.none,
                ),

                timelineOptions: const TimelineOptions(
                  height: 95,
                ),

                dayElementsOrder: const [
                  DayElement.top(),
                  DayElement.middle(),
                  DayElement.bottom(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _ArrowButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: const Color(0xff1a212c),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xff252e3b),
          ),
        ),
        child: Icon(
          icon,
          color: const Color(0xff9ba7b7),
          size: 20,
        ),
      ),
    );
  }
}
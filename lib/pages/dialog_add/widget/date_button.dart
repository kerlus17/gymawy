import 'package:flutter/material.dart';

class DateButton extends StatelessWidget {
  final DateTime date;
  final VoidCallback onTap;

  const DateButton({
    super.key,
    required this.date,
    required this.onTap,
  });

  String formatDate(DateTime date) {
    return '${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff0d1319),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xff202a34),
          ),
        ),
        child: Text(
          formatDate(date),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
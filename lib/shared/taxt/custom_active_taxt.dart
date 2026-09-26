import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';

class CustomActiveTaxt extends StatelessWidget {
  const CustomActiveTaxt({super.key, required this.status});
  final bool status;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: status
            ? const Color.fromARGB(255, 13, 112, 53)
            : const Color(0xFF4A1117),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: status
              ? ColorsMenege.green.withOpacity(.35)
              : ColorsMenege.red.withOpacity(.35),
        ),
      ),
      child: Text(
        status ? "نشط" : "منتهي",
        style: TextStyle(
          color: status ? ColorsMenege.green : ColorsMenege.red,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

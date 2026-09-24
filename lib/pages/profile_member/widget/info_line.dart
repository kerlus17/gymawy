
import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';

class InfoLine extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoLine({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 12,
          color: ColorsMenege.grey,
        ),
        const SizedBox(width: 6),
        Text(
          text,
          style: const TextStyle(
            fontSize: 9,
            color: ColorsMenege.grey,
          ),
        ),
      ],
    );
  }
}

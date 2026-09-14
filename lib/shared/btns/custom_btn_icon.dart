
import 'package:flutter/material.dart';

class CustomBtnIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color iconColor;
  final VoidCallback onTap;

  const CustomBtnIcon({
    required this.icon,
    required this.color,
    this.iconColor = const Color(0xFF9BA8B8),
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(9),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(9),
        child: SizedBox(
          width: 40,
          height: 40,
          child: Icon(
            icon,
            color: iconColor,
            size: 19,
          ),
        ),
      ),
    );
  }
}
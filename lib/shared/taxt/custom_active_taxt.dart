import 'package:flutter/material.dart';

class CustomActiveTaxt extends StatelessWidget {
  const CustomActiveTaxt({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF4A1117),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: const Color(0xFFE31E2F).withOpacity(.35),
                ),
              ),
              child: Text(
                text,
                style: const TextStyle(
                  color: Color(0xFFFF4A55),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            );
  }
}
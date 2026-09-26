import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  final bool isActive; 
  final Color color;

  const StatusPage({
    super.key, 
    required this.isActive, 
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        // استخدام withValues بدلاً من withOpacity لتفادي التنبيهات في الإصدارات الحديثة
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: 0.35)),
      ),
      child: Text(
        isActive ? "نشط" : "غير نشط", 
        style: TextStyle(
          color: color,
          fontSize: 7,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
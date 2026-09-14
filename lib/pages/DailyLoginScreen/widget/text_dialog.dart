
import 'package:flutter/material.dart';

class TextDialog extends StatelessWidget {
  final String text;

  const TextDialog({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.right,
      style: const TextStyle(
        color: Color(0xffd8dde2),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
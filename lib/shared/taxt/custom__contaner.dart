import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';

class customContaner extends StatelessWidget {
  const customContaner({super.key,  this.backcolor, this.isPading, required this.child});
final Color? backcolor;
final double? isPading;
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(    isPading??20),
      decoration: BoxDecoration(
        color:  backcolor??ColorsMenege.back_color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color:ColorsMenege.border,
        ),
      ),
      child: child,
      );
  }
}
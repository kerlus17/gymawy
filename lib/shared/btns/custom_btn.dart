import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.title, required this.icon, required this.backgroundColor, required this.onTap, required this.isIcon});
 final String title;
  final IconData icon;
  final Color backgroundColor;
  final  Function() onTap;
  final bool isIcon;
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
             isIcon? Icon(
                icon,
                color: Colors.white,
                size: 20,
              ):SizedBox(),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
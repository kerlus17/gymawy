import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.title,
    required this.backgroundColor,
    this.onTap, // أصبحت اختيارية الان
    this.icon,
    this.isIcon = false,
    this.isLoading = false, this.hight,
  });

  final String title;
  final IconData? icon;
  final Color backgroundColor;
  final VoidCallback? onTap; // Nullable
  final bool isIcon;
  final bool isLoading;
  final double? hight;
   
  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        hoverColor: ColorsMenege.hover_gray,
        // تعطيل الضغط أثناء التحميل أو إذا لم يتم تمرير onTap
        onTap: isLoading ? null : onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical:hight ?? 15),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isLoading)
                const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                )
              else ...[
                if (isIcon && icon != null) ...[
                  Icon(icon, color: Colors.white, size: 20),
                  const SizedBox(width: 10),
                ],
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

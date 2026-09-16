import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';

class SelectButton extends StatelessWidget {
  final String title;
  final String? actualTitle;
  final bool selected;
    final bool? iscurcle;
  final VoidCallback onTap;

  const SelectButton({
    super.key,
    required this.title,
    this.actualTitle,
    required this.selected,
    required this.onTap, this.iscurcle,
  });

  @override
  Widget build(BuildContext context) {
    

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 680),
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color:  ColorsMenege.back_color2,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected
                ? ColorsMenege.red2
                :  ColorsMenege.border,
            width: selected ? 1.4 : 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          


            
              Container(
                width: 11,
                height: 11,
                decoration: BoxDecoration(
                  color:selected? ColorsMenege.red2:  ColorsMenege.txt_gray,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color:selected? ColorsMenege.red2.withOpacity(.7): Colors.transparent,
                      blurRadius: 7,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
            
            Text(
               title,
              style: TextStyle(
                color: selected
                    ? ColorsMenege.white
                    : ColorsMenege.txt_gray,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

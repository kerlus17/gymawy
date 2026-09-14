import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';

class CustomTaxtfield extends StatelessWidget {
  const CustomTaxtfield({
    super.key,
    this.onchanged,
    this.controller,
    this.hint,
    this.keyboardType,
    this.textAlign,
    this.icon,
  });
  final Function(String)? onchanged;
  final TextEditingController? controller;
  final String? hint;
  final TextInputType? keyboardType;
  final TextAlign? textAlign;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      controller: controller,
      cursorColor: ColorsMenege.red,
      textDirection: TextDirection.ltr,
      onChanged: onchanged,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint ?? 'ابحث باستخدام كلمة دالة (الاسم، الجوال)...',
        hintStyle: TextStyle(color: ColorsMenege.txt_gray, fontSize: 13),
        prefixIcon: Icon(icon ?? Icons.search, color: ColorsMenege.txt_gray),
        filled: true,
        fillColor: ColorsMenege.back_color2,
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xff202a34)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffff4848), width: 1.3),
        ),
      ),
    );
  }



  
}

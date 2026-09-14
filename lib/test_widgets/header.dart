import 'package:flutter/material.dart';

class Header{

Widget _buildHeader() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE31E2F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  const SizedBox(width: 14),

                  const Text(
                    'إدارة المشتركين',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 6),

              const Text(
                'النظام الشامل المتطور لإدارة مراكز اللياقة البدنية والنوادي الرياضية',
                style: TextStyle(
                  color: Color(0xFF7D8796),
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(width: 20),

        // // تعديل التسعيرات
        // _HeaderButton(
        //   title: 'تعديل تسعيرات العضوية',
        //   icon: Icons.tune,
        //   backgroundColor: const Color(0xFF1A2330),
        //   onTap: () {},
        // ),

        const SizedBox(width: 14),

        // إضافة سجل
        // _HeaderButton(
        //   title: 'إضافة سجل جديد',
        //   icon: Icons.add,
        //   backgroundColor: const Color(0xFFE31E2F),
        //   onTap: _addMember,
        // ),
      ],
    );
  }

}
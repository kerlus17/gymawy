import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';
import 'package:systeam_gym/test_widgets/profile.dart';
import 'package:systeam_gym/pages/profile_member/widget/info_line.dart';

class Personinfo extends StatelessWidget {
  const Personinfo({super.key, required this.name, required this.id, required this.createdAt, required this.state});
final String name;
final String state;
final String id;
 final DateTime createdAt;
  @override
  Widget build(BuildContext context) {
    return customContaner(
      width: 650,
      backcolor: ColorsMenege.back_color2,
      child: Row(
        children: [
          Container(
            width: 76,
            height: 76,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: ColorsMenege.red2, width: 2),
            ),
            padding: const EdgeInsets.all(4),
            child: const CircleAvatar(
              backgroundColor: Color(0xFF16293A),
              child: Icon(Icons.person, size: 42, color: Color(0xFF7890A4)),
            ),
          ),

          const SizedBox(width: 15),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: ColorsMenege.white,
                    ),
                  ),

                  const SizedBox(width: 8),

                  StatusBadge(text: state, color: ColorsMenege.green),
                ],
              ),

              const SizedBox(height: 8),

              InfoLine(icon: Icons.badge_outlined, text: 'ID : $id '),

              const SizedBox(height: 5),

              InfoLine(
                icon: Icons.calendar_today_outlined,
                text: 'تاريخ التسجيل : $createdAt',
              ),
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 62,
                height: 62,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.qr_code_2,
                  color: Colors.black,
                  size: 52,
                ),
              ),

              const SizedBox(height: 4),

              const Text(
                'QR Code',
                style: TextStyle(color: AppColors.grey, fontSize: 8),
              ),

               Text(
                id,
                style: TextStyle(color: AppColors.grey, fontSize: 7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

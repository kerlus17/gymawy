import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key, required this.title, required this.descrabtion});
  final String title;
  final String descrabtion;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 6,
                height: 48,
                decoration: BoxDecoration(
                  color: ColorsMenege.red,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              const SizedBox(width: 14),

              Flexible(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: ColorsMenege.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),

          Text(
            descrabtion,
            style: TextStyle(color: ColorsMenege.txt_gray, fontSize: 13),
          ),
        ],
      ),
    );
  }
}

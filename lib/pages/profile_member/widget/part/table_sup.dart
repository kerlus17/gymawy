import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';
import 'package:systeam_gym/pages/profile_member/data/sups.dart';

class TableSup extends StatelessWidget {
  const TableSup({super.key, required this.memberId});
  final String memberId;

  @override
  Widget build(BuildContext context) {
    return customContaner(
      backcolor: ColorsMenege.back_color2,
      hight: 370,
      width: 600,
      child: Column(
        children: [Expanded(child: MemberData2(memberID: memberId,))],
      ),
    );
  }
}

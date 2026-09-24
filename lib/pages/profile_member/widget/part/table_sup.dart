import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/pages/membersScreens/widget/members_table.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';
import 'package:systeam_gym/pages/profile_member/data/sups.dart';

class TableSup extends StatelessWidget {
  const TableSup({super.key});

  @override
  Widget build(BuildContext context) {
    return customContaner(
                          backcolor: ColorsMenege.back_color2,
                          hight: 370,
                          width: 600,
                          child: Column(
                            children: [
                              Expanded(
                                child: MembersTable(
                                  columns: MemberData2.columns,
                                  rows: MemberData2.rows,
                                ),
                              ),
                            ],
                          ),
                        )
                     ;
  }
}
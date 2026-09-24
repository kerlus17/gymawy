import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/pages/membersScreens/data/member_data.dart';
import 'package:systeam_gym/pages/membersScreens/widget/members_table.dart';
import 'package:systeam_gym/shared/btns/custom_btn.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';
import 'package:systeam_gym/shared/taxt/title_page.dart';
import 'package:systeam_gym/pages/profile_member/data/sups.dart';
import 'package:systeam_gym/pages/profile_member/widget/info_line.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/calnder.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/personinfo.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/status_blocks.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/sup_info.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/table_sup.dart';
import 'package:systeam_gym/pages/profile_member/widget/profile.dart';
import 'package:table_calendar/table_calendar.dart';

class ProfileMember extends StatelessWidget {
  const ProfileMember({super.key});

  @override
  Widget build(BuildContext context) {
     DateTime createdAt;
    return Scaffold(
      backgroundColor: ColorsMenege.back_color2,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            TitlePage(title: 'title', descrabtion: 'descrabtion'),
            //Gap(5),
            customContaner(
              //  backcolor: Colors.amber,
              hight: 550,
              width: 1070,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomBtn(
                      hight: 8,
                      title: 'back',
                      backgroundColor: ColorsMenege.red2,
                      icon: Icons.arrow_back,
                      isIcon: true,
                      onTap: () {Navigator.pop(context);},
                    ),
                    Gap(5),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Personinfo(name: 'aaa', id: 'aaa', createdAt: DateTime.now(), state: 'aaa',),
                            Gap(10),
                            Row(
                              children: [
                                StatusBlocks(text: '', value: '', des: '',),
                                 Gap(10),
                                StatusBlocks(text: '', value: '', des: '',),
                                 Gap(10),
                                StatusBlocks(text: '', value: '', des: '',),
                                 Gap(10),
                                StatusBlocks(text: '', value: '', des: '',),
                              ],
                            ),
                          ],
                        ),
                        Gap(20),
                        SupInfo(packagetype: '', firstdate: DateTime.now(), enddate: DateTime.now(),)
                      ],
                    ),
                    Gap(10),
                    Row(children: [
                      TableSup(),
                      Gap(20),
                      Calnder(),
                    ],)
                  ],
                ),
              ),
            ),
            Gap(20)
          ],
        ),
      ),
    );
  }
}

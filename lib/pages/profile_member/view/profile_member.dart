import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/data/presentation/attends/attends_bloc.dart';
import 'package:systeam_gym/data/presentation/member/member_bloc.dart';
import 'package:systeam_gym/data/presentation/subscription/subscription_bloc.dart';
import 'package:systeam_gym/pages/profile_member/refactor/row_details_profile.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/calnder.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/personinfo.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/sup_info.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/table_sup.dart';
import 'package:systeam_gym/shared/btns/custom_btn.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';
import 'package:systeam_gym/shared/taxt/title_page.dart';

class ProfileMember extends StatelessWidget {
  const ProfileMember({super.key, required this.name, required this.memberId});
  final String name;
  final String memberId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              MemberBloc()
                ..add(MemberEvent.getOneDetailsMember(memberId: memberId)),
        ),
        BlocProvider(
          create: (context) => SubscriptionBloc()
            ..add(
              SubscriptionEvent.getSubscriptionsOfMember(memberId: memberId),
            ),
        ),
        BlocProvider(create: (context) => AttendsBloc()),
      ],
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: ColorsMenege.back_color2,
            body: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  TitlePage(
                    title: 'profile : $name',
                    descrabtion: 'descrabtion',
                  ),
                  customContaner(
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
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Gap(5),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BlocBuilder<
                                    SubscriptionBloc,
                                    SubscriptionState
                                  >(
                                    builder: (context, state) {
                                      final bool isSubActive =
                                          context
                                              .read<SubscriptionBloc>()
                                              .statusOfLastSub ??
                                          false;

                                      return Personinfo(
                                        name: name,
                                        id: memberId,
                                        createdAt: DateTime.now(),
                                        stateOfLastSub: isSubActive,
                                      );
                                    },
                                  ),
                                  const Gap(10),
                                  RowDetailsProfile(),
                                ],
                              ),
                              const Gap(20),
                              SupInfo(memberId: memberId),
                            ],
                          ),
                          const Gap(10),
                          Row(children:  [TableSup(memberId: memberId,), Gap(20), Calnder()]),
                        ],
                      ),
                    ),
                  ),
                  const Gap(20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

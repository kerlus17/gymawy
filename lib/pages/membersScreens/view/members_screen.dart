import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/data/models/gym_member/gym_member.dart';
import 'package:systeam_gym/data/models/subscription/subscription.dart';
import 'package:systeam_gym/data/presentation/member/member_bloc.dart';
import 'package:systeam_gym/data/presentation/subscription/subscription_bloc.dart';
import 'package:systeam_gym/pages/dialog_add/view/add_user_dialog.dart';
import 'package:systeam_gym/pages/membersScreens/MembersFilterCubit/MembersFilterCubit%20.dart';
import 'package:systeam_gym/pages/membersScreens/MembersFilterCubit/MembersFilterState%20.dart';
import 'package:systeam_gym/pages/membersScreens/data/member_data.dart';
import 'package:systeam_gym/pages/membersScreens/widget/members_table.dart';
import 'package:systeam_gym/shared/btns/custom_action_btn%20.dart';
import 'package:systeam_gym/shared/btns/custom_btn.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';
import 'package:systeam_gym/shared/taxt/custom_taxtfield.dart';
import 'package:systeam_gym/shared/taxt/title_page.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              MemberBloc()..add(const MemberEvent.getAllMembers()),
        ),
        BlocProvider(
          create: (context) =>
              SubscriptionBloc()
                ..add(const SubscriptionEvent.getAllSubscription()),
        ),
        BlocProvider(create: (context) => MembersFilterCubit()),
      ],
      child: MembersView(),
    );
  }
}

class MembersView extends StatelessWidget {
  MembersView({super.key});

  PlutoGridStateManager? stateManager;

  // String selectedFilter = 'الكل';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsMenege.back_color2,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              children: [
                TitlePage(
                  title: 'Subscriber Management',
                  descrabtion:
                      'The Advanced, Comprehensive System for Managing Fitness Centers and Sports Clubs',
                ),
                const SizedBox(width: 20),
                CustomBtn(
                  title: 'Adjustment of membership pricing',
                  icon: Icons.tune,
                  backgroundColor: const Color(0xFF1A2330),
                  onTap: () {},
                  isIcon: true,
                ),
                const SizedBox(width: 14),
                CustomBtn(
                  title: 'Add a new record',
                  icon: Icons.add,
                  backgroundColor: const Color(0xFFE31E2F),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (dialogContext) {
                        return MultiBlocProvider(
                          providers: [
                            BlocProvider.value(
                              value: context.read<MemberBloc>(),
                            ),
                            BlocProvider.value(
                              value: context.read<SubscriptionBloc>(),
                            ),
                          ],
                          child: const AddUserDialog(),
                        );
                      },
                    );
                  },
                  isIcon: true,
                ),
              ],
            ),
            const SizedBox(height: 28),
            customContaner(
              child: Row(
                children: [
                  Expanded(
                    child: CustomTaxtfield(
                      onchanged: (value) {
                        context.read<MembersFilterCubit>().search(value);
                      },
                    ),
                  ),
                  const SizedBox(width: 20),

                  BlocBuilder<MembersFilterCubit, MembersFilterState>(
                    builder: (context, filterState) {
                      return customContaner(
                        backcolor: ColorsMenege.back_color2,
                        isPading: 8,
                        child: Row(
                          children: [
                            CustomActionBtn(
                              title: 'الكل',
                              selected: filterState.filter == MemberFilter.all,
                              onTap: () {
                                context.read<MembersFilterCubit>().changeFilter(
                                  MemberFilter.all,
                                );
                              },
                            ),
                            CustomActionBtn(
                              title: 'نشط',
                              selected:
                                  filterState.filter == MemberFilter.active,
                              onTap: () {
                                context.read<MembersFilterCubit>().changeFilter(
                                  MemberFilter.active,
                                );
                              },
                            ),
                            CustomActionBtn(
                              title: 'غير نشط',
                              selected:
                                  filterState.filter == MemberFilter.notActive,
                              onTap: () {
                                context.read<MembersFilterCubit>().changeFilter(
                                  MemberFilter.notActive,
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            Expanded(
              child: BlocBuilder<MembersFilterCubit, MembersFilterState>(
                builder: (context, filterState) {
                  return BlocBuilder<MemberBloc, MemberState>(
                    builder: (context, memberState) {
                      return BlocBuilder<SubscriptionBloc, SubscriptionState>(
                        builder: (context, subState) {
                          return memberState.when(
                            initial: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            error: (message) => Center(
                              child: Text(
                                message,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            success: (members) {
                              final List<PlutoRow> allRows = [];

                              final List<GymMember> membersList = members;
                              final List<Subscription> allSubscriptions =
                                  subState.maybeWhen(
                                    success: (subscriptions) => subscriptions,
                                    orElse: () => [],
                                  );

                              for (final member in members) {
                                final memberSubs = allSubscriptions
                                    .where((sub) => sub.memberId == member.id)
                                    .toList();

                                Subscription? lastSub;
                                if (memberSubs.isNotEmpty) {
                                  memberSubs.sort(
                                    (a, b) =>
                                        b.startDate.compareTo(a.startDate),
                                  );
                                  lastSub = memberSubs.first;
                                }

                                final bool isActive =
                                    lastSub?.isActiveAt(DateTime.now()) ??
                                    false;
                                final String status = isActive
                                    ? 'نشط'
                                    : 'غير نشط';

                                if (filterState.filter == MemberFilter.active &&
                                    !isActive)
                                  continue;
                                if (filterState.filter ==
                                        MemberFilter.notActive &&
                                    isActive)
                                  continue;

                                final genderText =
                                    member.gender == Gender.female
                                    ? 'أنثى'
                                    : 'ذكر';
                                final String pack = switch (lastSub?.planId) {
                                  SubscriptionPlan.oneMonths =>'شهر',
                                  SubscriptionPlan.threeMonths => '3 أشهر',
                                  SubscriptionPlan.sixMonths => '6 أشهر',
                                  SubscriptionPlan.yearly => 'سنوي',
                                  _ => 'غير مشترك',
                                };

                                final startDate = lastSub != null
                                    ? "${lastSub.startDate.year}-${lastSub.startDate.month.toString().padLeft(2, '0')}-${lastSub.startDate.day.toString().padLeft(2, '0')}"
                                    : '-';
                                final endDate = lastSub != null
                                    ? "${lastSub.endDate.year}-${lastSub.endDate.month.toString().padLeft(2, '0')}-${lastSub.endDate.day.toString().padLeft(2, '0')}"
                                    : '-';

                                final searchQuery = filterState.searchQuery
                                    .trim()
                                    .toLowerCase();

                                if (searchQuery.isNotEmpty) {
                                  final name = member.name.toLowerCase();
                                  final phone = member.id.toLowerCase();

                                  if (!name.contains(searchQuery) &&
                                      !phone.contains(searchQuery)) {
                                    continue;
                                  }
                                }
                                allRows.add(
                                  PlutoRow(
                                    cells: {
                                      'name': PlutoCell(value: member.name),
                                      'package': PlutoCell(value: pack),
                                      'status': PlutoCell(value: status),
                                      'phone': PlutoCell(value: member.phone),
                                      'gender': PlutoCell(value: genderText),
                                      'startDate': PlutoCell(value: startDate),
                                      'endDate': PlutoCell(value: endDate),
                                      'actions': PlutoCell(value: ''),
                                      'id': PlutoCell(value: member.id),
                                    },
                                  ),
                                );
                              }

                              return MembersTable(
                                key: ValueKey(
                                  '${filterState.filter}_${allRows.length}',
                                ),
                                columns: MemberData.columns(context),
                                rows: allRows,
                              );
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

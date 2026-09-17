import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/data/presentation/attends/attends_bloc.dart';
import 'package:systeam_gym/pages/daliyLogin/refactor/row_title_daily_login.dart';
import 'package:systeam_gym/pages/daliyLogin/tt.dart';
import 'package:systeam_gym/pages/dialog_add/widget/text_dialog.dart';
import 'package:systeam_gym/shared/btns/custom_btn_icon.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';
import 'package:systeam_gym/shared/taxt/title_page.dart';

class DailyLoginScreenView extends StatefulWidget {
  const DailyLoginScreenView({super.key});

  @override
  State<DailyLoginScreenView> createState() => _DailyLoginScreenViewState();
}

class _DailyLoginScreenViewState extends State<DailyLoginScreenView> {
  DateTime selectedDate = DateTime(2026, 5, 26);
  final DateTime firstDate = DateTime(2026, 1, 1);
  final DateTime lastDate = DateTime(2026, 12, 31);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsMenege.back_color2,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  TitlePage(title: 'title', descrabtion: 'descrabtion'),
                  const Gap(20),
                  customContaner(
                    child: Row(
                      children: [
                        CustomBtnIcon(
                          icon: Icons.calendar_month_outlined,
                          color: ColorsMenege.back_color,
                          iconColor: ColorsMenege.red,
                          onTap: () {},
                        ),
                        const Gap(10),
                        TextDialog(text: 'text'),
                        const Gap(10),
                        customContaner(
                          isPading: 10,
                          child: TextDialog(text: '12 / 3 / 2026'),
                        ),
                      ],
                    ),
                  ),

                  const Gap(20),
                  customContaner(
                    child: Row(
                      children: [
                        CustomBtnIcon(
                          icon: Icons.punch_clock_outlined,
                          color: ColorsMenege.back_color,
                          iconColor: ColorsMenege.red,
                          onTap: () {},
                        ),
                        const Gap(10),
                        TextDialog(text: 'text'),
                        const Gap(10),
                        customContaner(
                          isPading: 10,
                          child: TextDialog(text: '12 am to 6pm'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const Gap(20),
              customContaner(
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Month
                        const Icon(
                          Icons.calendar_month_outlined,
                          color: Color(0xffef3b3b),
                          size: 22,
                        ),

                        const SizedBox(width: 8),

                        const Text(
                          'مايو 2026',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const Spacer(),
                        CustomBtnIcon(
                          icon: Icons.chevron_left,
                          color: ColorsMenege.back_color2,
                          iconColor: ColorsMenege.txt_gray,
                          onTap: () {},
                        ),

                        const Gap(10),
                        CustomBtnIcon(
                          icon: Icons.chevron_right,
                          color: ColorsMenege.back_color2,
                          iconColor: ColorsMenege.txt_gray,
                          onTap: () {},
                        ),
                        const Gap(10),
                        // Previous
                      ],
                    ),

                    const SizedBox(height: 14),

                    EasyDateTimeLinePicker.itemBuilder(
                      firstDate: firstDate,
                      lastDate: lastDate,
                      focusedDate: selectedDate,

                      currentDate: DateTime.now(),

                      locale: const Locale('en'),

                      itemExtent: 135,

                      selectionMode: const SelectionMode.autoCenter(),

                      onDateChange: (date) {
                        setState(() {
                          selectedDate = date;
                        });
                      },

                      headerOptions: const HeaderOptions(
                        headerType: HeaderType.none,
                      ),

                      timelineOptions: const TimelineOptions(height: 95),

                      itemBuilder:
                          (
                            context,
                            date,
                            isSelected,
                            isDisabled,
                            isToday,
                            onTap,
                          )

                          {
                            return InkWell(
                              onTap: onTap,
                              child: Container(
                                width: 190,
                                height: 80,

                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? ColorsMenege.red2
                                      : ColorsMenege.back_color2,

                                  borderRadius: BorderRadius.circular(12),

                                  border: Border.all(
                                    color: isSelected
                                        ? ColorsMenege.red
                                        : ColorsMenege.back_color,
                                  ),
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      date.day.toString(),
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: isSelected
                                            ? Colors.white
                                            : Colors.grey,
                                      ),
                                    ),

                                    const SizedBox(height: 4),

                                    Text(
                                      DateFormat('EEEE', 'ar').format(date),
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: isSelected
                                            ? Colors.white
                                            : Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                    ),
                  ],
                ),
              ),

              const Gap(30),
              customContaner(
                hight: 500,
                child: Column(
                  children: [
                    RowTitleDailyLogin(),
                    Expanded(
                      child: BlocBuilder<AttendsBloc, AttendsState>(
                        builder: (context, state) {
                          
                          
                          if (state is LoadingState) {
                            // استبدل AttendsLoading باسم حالة التحميل عندك
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          if (state is ErrorState) {
                            return Center(child: Text(state.errMsg));
                          }

                          if (state is successGetAttendanceWithDetailsState) {
                           
                            final attendsList = state.attendsWithDetails;
                            

                            if (attendsList.isEmpty) {
                              return const Center(
                                child: Text('لا يوجد تسجيل حضور '),
                              );
                            }

                            return ListView.builder(
                              itemCount: attendsList.length,
                              itemBuilder: (context, index) {
                                
                                final item = attendsList[index];
                             

                                return AttendanceCard(
                                  name: item.member!.name,
                                  id: item.attendance.memberId,
                                  subscriptionId: item.subscription!.planId
                                      .toString(),
                                  time: DateFormat(
                                    'hh:mm a',
                                  ).format(item.attendance.checkInAt),
                                );
                              },
                            );
                          }

                          return const SizedBox();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

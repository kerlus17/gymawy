import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/pages/daliyLogin/tt.dart';
import 'package:systeam_gym/pages/dialog_add/widget/text_dialog.dart';
import 'package:systeam_gym/shared/btns/custom_btn.dart';
import 'package:systeam_gym/shared/btns/custom_btn_icon.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';
import 'package:systeam_gym/shared/taxt/custom_taxtfield.dart';
import 'package:systeam_gym/shared/taxt/title_page.dart';

class DialyLoginScreen extends StatefulWidget {
  DialyLoginScreen({super.key});

  @override
  State<DialyLoginScreen> createState() => _DialyLoginScreenState();
}

class _DialyLoginScreenState extends State<DialyLoginScreen> {
  DateTime selectedDate = DateTime(2026, 5, 26);

  final DateTime firstDate = DateTime(2026, 1, 1);

  final DateTime lastDate = DateTime(2026, 12, 31);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsMenege.back_color2,
      body: Padding(
        padding: EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  TitlePage(title: 'title', descrabtion: 'descrabtion'),
                  Gap(20),
                  customContaner(
                    child: Row(
                      children: [
                        CustomBtnIcon(
                          icon: Icons.calendar_month_outlined,
                          color: ColorsMenege.back_color,
                          iconColor: ColorsMenege.red,
                          onTap: () {},
                        ),
                        Gap(10),
                        TextDialog(text: 'text'),
                        Gap(10),
                        customContaner(
                          isPading: 10,
                          child: TextDialog(text: '12 / 3 / 2026'),
                        ),
                      ],
                    ),
                  ),

                  Gap(20),
                  customContaner(
                    child: Row(
                      children: [
                        CustomBtnIcon(
                          icon: Icons.punch_clock_outlined,
                          color: ColorsMenege.back_color,
                          iconColor: ColorsMenege.red,
                          onTap: () {},
                        ),
                        Gap(10),
                        TextDialog(text: 'text'),
                        Gap(10),
                        customContaner(
                          isPading: 10,
                          child: TextDialog(text: '12 am to 6pm'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // =========================
              // Header
              // =========================
              Gap(20),
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

                        Text(
                          'مايو 2026',
                          style: const TextStyle(
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
                        Gap(10),
                        CustomBtnIcon(
                          icon: Icons.chevron_right,
                          color: ColorsMenege.back_color2,
                          iconColor: ColorsMenege.txt_gray,
                          onTap: () {},
                        ),
                        Gap(10),
                        // Previous
                      ],
                    ),

                    const SizedBox(height: 14),

                    // =========================
                    // Timeline
                    // =========================
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
                          ) {
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

                    //  Gap(30),
                  ],
                ),
              ),

              Gap(30),
              customContaner(
                hight: 500,
                child: Column(
                  children: [
                    Row(
                      children: [
                        TitlePage(title: 'title', descrabtion: 'descrabtion'),
                        Gap(50),

                        CustomBtn(
                          title: 'add attands',
                          icon: Icons.hdr_plus_outlined,
                          backgroundColor: ColorsMenege.red2,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return AlertDialog(
                                  backgroundColor: ColorsMenege.back_color,
                                  surfaceTintColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      20,
                                    ),
                                  ),
                                  title: const Text(
                                    'Register Member',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 27,
                                      fontFamily: 'Arial',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),

                                  content: SizedBox(
                                    height: 70,

                                    child: Column(
                                      children: [
                                        CustomTaxtfield(
                                           hint: 'ID',
                    icon: Icons.badge_outlined,
                                        )
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    CustomBtn( title: ' Save & Add Member',
                    icon: Icons.check,
                    backgroundColor: ColorsMenege.red, onTap: (){}, isIcon: true)
                                  ],
                                );
                              },
                            );
                          },
                          isIcon: true,
                        ),
                        Gap(100),
                        Expanded(child: CustomTaxtfield()),
                      ],
                    ),
                    // CustomTaxtfield(),CustomTaxtfield(),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return AttendanceCard(
                            name: 'محمد أحمد',
                            id: '234',
                            subscriptionId: ' 3 month',
                            time: DateFormat('hh:mm a').format(DateTime.now()),
                          );
                          ;
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

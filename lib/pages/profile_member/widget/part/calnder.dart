import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';
import 'package:table_calendar/table_calendar.dart';

class Calnder extends StatelessWidget {
  const Calnder({super.key});

  @override
  Widget build(BuildContext context) {
    return customContaner(
                          backcolor: ColorsMenege.back_color2,
                         // hight: 600,
                          width: 400,
                          child: TableCalendar(
                            firstDay: DateTime(2020),
                            lastDay: DateTime(2030),
                            focusedDay: DateTime.now(),
  rowHeight: 32,

  daysOfWeekHeight: 25,

  calendarStyle: const CalendarStyle(
    cellMargin: EdgeInsets.all(1),
    outsideDaysVisible: false,
  ),

  headerStyle: const HeaderStyle(
    formatButtonVisible: false,
    titleCentered: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.bold,
    ),
  ),
                            calendarBuilders: CalendarBuilders(
                              defaultBuilder: (context, day, focusedDay) {
                                return Container(
                                  margin: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff10283A),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${day.day}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            
                            
                            ),
                          ),
                        )
                  ;
  }
}
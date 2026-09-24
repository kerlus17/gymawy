import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
 
class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Power Gym',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF020A12),
        fontFamily: 'Arial',
        useMaterial3: true,
      ),
      home: const MemberDetailsPage(),
    );
  }
}

// ============================================================
// COLORS
// ============================================================

class AppColors {
  static const background = Color(0xFF020A12);
  static const card = Color(0xFF07131F);
  static const card2 = Color(0xFF091825);
  static const border = Color.fromARGB(255, 16, 54, 26);

  static const red = Color(0xFFFF1834);
  static const green = Color(0xFF00D99A);
  static const blue = Color(0xFF2587FF);

  static const white = Color(0xFFF2F6FA);
  static const grey = Color(0xFF80909F);
  static const darkGrey = Color(0xFF455564);
}

// ============================================================
// MAIN PAGE
// ============================================================

class MemberDetailsPage extends StatelessWidget {
  const MemberDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 1250,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      children: [
                        const MemberTopHeader(),
                        const SizedBox(height: 12),
    
                        // ------------------------------------------------
                        // PROFILE + CURRENT SUBSCRIPTION
                        // ------------------------------------------------
    
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Column(
                                children: [
                                  const MemberProfileCard(),
                                  const SizedBox(height: 10),
                                  const MemberStats(),
                                ],
                              ),
                            ),
    
                            const SizedBox(width: 10),
    
                            Expanded(
                              flex: 3,
                              child: CurrentSubscriptionCard(
                                onRenew: () {
                                  _showRenewDialog(context);
                                },
                              ),
                            ),
                          ],
                        ),
    
                        const SizedBox(height: 10),
    
                        // ------------------------------------------------
                        // HISTORY + CALENDAR
                        // ------------------------------------------------
    
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                              flex: 7,
                              child: SubscriptionHistory(),
                            ),
    
                            const SizedBox(width: 10),
    
                            Expanded(
                              flex: 3,
                              child: AttendanceCalendar(
                                onDateSelected: (date) {
                                  debugPrint(
                                    'Selected: $date',
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
    
                        const SizedBox(height: 10),
    
                        const MemberInfoSection(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showRenewDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return Dialog(
          backgroundColor: AppColors.card,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: const BorderSide(
              color: AppColors.border,
            ),
          ),
          child: SizedBox(
            width: 420,
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.autorenew,
                        color: AppColors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'تجديد الاشتراك',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 22),

                  _DialogField(
                    label: 'مدة الاشتراك',
                    value: 'شهر',
                  ),

                  const SizedBox(height: 12),

                  _DialogField(
                    label: 'قيمة الاشتراك',
                    value: '300 جنيه',
                  ),

                  const SizedBox(height: 22),

                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('إلغاء'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.red,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('تجديد'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// ============================================================
// TOP HEADER
// ============================================================

class MemberTopHeader extends StatelessWidget {
  const MemberTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 32,
            decoration: BoxDecoration(
              color: AppColors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          const SizedBox(width: 10),

          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'صفحة العضو',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'معلومات العضو واشتراكاته',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 9,
                ),
              ),
            ],
          ),

          const Spacer(),

          _HeaderDateBox(
            icon: Icons.calendar_month,
            text: '2026 / 09 / 15',
          ),

          const SizedBox(width: 8),

          const Text(
            '—',
            style: TextStyle(
              color: AppColors.darkGrey,
            ),
          ),

          const SizedBox(width: 8),

          _HeaderDateBox(
            icon: Icons.calendar_month,
            text: '2026 / 09 / 12',
          ),

          const SizedBox(width: 15),

          _HeaderDateBox(
            icon: Icons.access_time,
            text: '01:00',
          ),

          const SizedBox(width: 6),

          const Text(
            '—',
            style: TextStyle(
              color: AppColors.darkGrey,
            ),
          ),

          const SizedBox(width: 6),

          _HeaderDateBox(
            icon: Icons.access_time,
            text: '12:00',
          ),
        ],
      ),
    );
  }
}

class _HeaderDateBox extends StatelessWidget {
  final IconData icon;
  final String text;

  const _HeaderDateBox({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 13,
          color: AppColors.red,
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.grey,
            fontSize: 9,
          ),
        ),
      ],
    );
  }
}

// ============================================================
// MEMBER PROFILE
// ============================================================

class MemberProfileCard extends StatelessWidget {
  const MemberProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      height: 125,
      child: Row(
        children: [
          // Profile image
          Container(
            width: 76,
            height: 76,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.red,
                width: 2,
              ),
            ),
            padding: const EdgeInsets.all(4),
            child: const CircleAvatar(
              backgroundColor: Color(0xFF16293A),
              child: Icon(
                Icons.person,
                size: 42,
                color: Color(0xFF7890A4),
              ),
            ),
          ),

          const SizedBox(width: 15),

          // Member name
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text(
                      'أحمد محمد علي',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),

                    const SizedBox(width: 8),

                    StatusBadge(
                      text: 'نشط',
                      color: AppColors.green,
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                _InfoLine(
                  icon: Icons.badge_outlined,
                  text: 'ID : 01027229420',
                ),

                const SizedBox(height: 5),

                _InfoLine(
                  icon: Icons.calendar_today_outlined,
                  text: 'تاريخ التسجيل : 2026-05-26',
                ),
              ],
            ),
          ),

          // QR
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
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 8,
                ),
              ),

              const Text(
                '01027229420',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 7,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoLine extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoLine({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 12,
          color: AppColors.grey,
        ),
        const SizedBox(width: 6),
        Text(
          text,
          style: const TextStyle(
            fontSize: 9,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}

// ============================================================
// CURRENT SUBSCRIPTION
// ============================================================

class CurrentSubscriptionCard extends StatelessWidget {
  final VoidCallback onRenew;

  const CurrentSubscriptionCard({
    super.key,
    required this.onRenew,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'الاشتراك الحالي',
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),

              const Spacer(),

              StatusBadge(
                text: 'نشط',
                color: AppColors.green,
              ),
            ],
          ),

          const SizedBox(height: 8),

          const Text(
            '3 أشهر',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          const Text(
            '2026-05-26',
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 8,
            ),
          ),

          const Text(
            '2026-08-26',
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 8,
            ),
          ),

          const Spacer(),

          SizedBox(
            width: double.infinity,
            height: 29,
            child: ElevatedButton.icon(
              onPressed: onRenew,
              icon: const Icon(
                Icons.refresh,
                size: 13,
              ),
              label: const Text(
                'تجديد الاشتراك',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// STATS
// ============================================================

class MemberStats extends StatelessWidget {
  const MemberStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: StatCard(
            icon: Icons.calendar_month_outlined,
            title: 'مدة الاشتراك',
            value: '12',
            suffix: 'يوم',
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: StatCard(
            icon: Icons.timelapse,
            title: 'مدة الاشتراك',
            value: '3',
            suffix: 'شهر',
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: StatCard(
            icon: Icons.payments_outlined,
            title: 'المدفوع',
            value: '1500',
            suffix: 'جنيه',
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: StatCard(
            icon: Icons.access_time,
            title: 'الحالة',
            value: 'نشط',
            suffix: '',
            valueColor: AppColors.green,
          ),
        ),
      ],
    );
  }
}

class StatCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String suffix;
  final Color? valueColor;

  const StatCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.suffix,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 12,
                color: AppColors.grey,
              ),
              const SizedBox(width: 5),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 8,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),

          const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: valueColor ?? AppColors.white,
                ),
              ),
              if (suffix.isNotEmpty) ...[
                const SizedBox(width: 4),
                Text(
                  suffix,
                  style: const TextStyle(
                    fontSize: 8,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

// ============================================================
// SUBSCRIPTION HISTORY
// ============================================================

class SubscriptionHistory extends StatelessWidget {
  const SubscriptionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final subscriptions = [
      [
        '#SUB-100',
        '2026-05-26',
        '2026-08-26',
        '3 أشهر',
        'مستمر',
      ],
      [
        '#SUB-099',
        '2026-04-10',
        '2026-05-10',
        'شهر',
        'منتهي',
      ],
      [
        '#SUB-098',
        '2026-03-10',
        '2026-04-10',
        'شهر',
        'منتهي',
      ],
      [
        '#SUB-097',
        '2026-02-01',
        '2026-03-01',
        'شهر',
        'منتهي',
      ],
    ];

    return AppCard(
      child: Column(
        children: [
          const SectionHeader(
            icon: Icons.history,
            title: 'الاشتراكات السابقة',
          ),

          const SizedBox(height: 10),

          // Header
          Container(
            height: 30,
            decoration: BoxDecoration(
              color: AppColors.card2,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _TableTitle('رقم الاشتراك'),
                ),
                Expanded(
                  flex: 2,
                  child: _TableTitle('تاريخ البداية'),
                ),
                Expanded(
                  flex: 2,
                  child: _TableTitle('تاريخ النهاية'),
                ),
                Expanded(
                  child: _TableTitle('المدة'),
                ),
                Expanded(
                  child: _TableTitle('الحالة'),
                ),
                SizedBox(
                  width: 35,
                  child: _TableTitle(''),
                ),
              ],
            ),
          ),

          const SizedBox(height: 4),

          ...subscriptions.map(
            (subscription) {
              return _SubscriptionRow(
                id: subscription[0],
                start: subscription[1],
                end: subscription[2],
                duration: subscription[3],
                status: subscription[4],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _TableTitle extends StatelessWidget {
  final String text;

  const _TableTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.grey,
          fontSize: 8,
        ),
      ),
    );
  }
}

class _SubscriptionRow extends StatelessWidget {
  final String id;
  final String start;
  final String end;
  final String duration;
  final String status;

  const _SubscriptionRow({
    required this.id,
    required this.start,
    required this.end,
    required this.duration,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final active = status == 'مستمر';

    return Container(
      height: 34,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.border.withOpacity(.7),
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                id,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 8,
                ),
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: _CellText(start),
          ),

          Expanded(
            flex: 2,
            child: _CellText(end),
          ),

          Expanded(
            child: _CellText(duration),
          ),

          Expanded(
            child: Center(
              child: StatusBadge(
                text: status,
                color: active
                    ? AppColors.green
                    : AppColors.red,
              ),
            ),
          ),

          SizedBox(
            width: 35,
            child: Center(
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_left,
                  size: 14,
                  color: AppColors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CellText extends StatelessWidget {
  final String text;

  const _CellText(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.grey,
          fontSize: 8,
        ),
      ),
    );
  }
}

// ============================================================
// CALENDAR
// ============================================================

class AttendanceCalendar extends StatefulWidget {
  final Function(String date)? onDateSelected;

  const AttendanceCalendar({
    super.key,
    this.onDateSelected,
  });

  @override
  State<AttendanceCalendar> createState() =>
      _AttendanceCalendarState();
}

class _AttendanceCalendarState
    extends State<AttendanceCalendar> {
  int selectedDay = 7;

  final Set<int> attendanceDays = {
    7,
    10,
    12,
    26,
  };

  @override
  Widget build(BuildContext context) {
    final days = List.generate(
      31,
      (index) => index + 1,
    );

    return AppCard(
      child: Column(
        children: [
          const SectionHeader(
            icon: Icons.calendar_month,
            title: 'مواعيد الحضور خلال الشهر الماضي',
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_right,
                  size: 16,
                  color: AppColors.grey,
                ),
              ),

              const Text(
                'أغسطس 2026',
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_left,
                  size: 16,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),

          const SizedBox(height: 5),

          const Row(
            children: [
              _WeekDay('الأحد'),
              _WeekDay('الاثنين'),
              _WeekDay('الثلاثاء'),
              _WeekDay('الأربعاء'),
              _WeekDay('الخميس'),
              _WeekDay('الجمعة'),
              _WeekDay('السبت'),
            ],
          ),

          const SizedBox(height: 5),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 35,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1.2,
            ),
            itemBuilder: (context, index) {
              // August 2026 starts Saturday.
              final day = index - 5 + 1;

              if (day < 1 || day > 31) {
                return const SizedBox();
              }

              final selected = selectedDay == day;
              final attended = attendanceDays.contains(day);

              return InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () {
                  setState(() {
                    selectedDay = day;
                  });

                  widget.onDateSelected?.call(
                    '2026-08-${day.toString().padLeft(2, '0')}',
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: selected
                        ? AppColors.green
                        : attended
                            ? AppColors.green.withOpacity(.15)
                            : Colors.transparent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      '$day',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: selected
                            ? Colors.black
                            : attended
                                ? AppColors.green
                                : AppColors.grey,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),

          const SizedBox(height: 8),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Legend(
                color: AppColors.green,
                text: 'حضر',
              ),
              SizedBox(width: 12),
              _Legend(
                color: AppColors.red,
                text: 'غائب',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _WeekDay extends StatelessWidget {
  final String text;

  const _WeekDay(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.grey,
            fontSize: 6,
          ),
        ),
      ),
    );
  }
}

class _Legend extends StatelessWidget {
  final Color color;
  final String text;

  const _Legend({
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.grey,
            fontSize: 7,
          ),
        ),
      ],
    );
  }
}

// ============================================================
// MEMBER INFORMATION
// ============================================================

class MemberInfoSection extends StatelessWidget {
  const MemberInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: MemberInfoCard(
            title: 'الملاحظات',
            icon: Icons.notes,
            child: const Text(
              'العضو ملتزم بالحضور ولا توجد ملاحظات حالياً.',
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 9,
              ),
            ),
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: MemberInfoCard(
            title: 'الصورة الشخصية',
            icon: Icons.image_outlined,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: AppColors.card2,
                  ),
                  child: const Icon(
                    Icons.person,
                    color: AppColors.grey,
                  ),
                ),

                const SizedBox(width: 10),

                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'أحمد محمد علي',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'آخر تحديث: 2026-05-26',
                      style: const TextStyle(
                        color: AppColors.grey,
                        fontSize: 7,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: MemberInfoCard(
            title: 'بيانات التواصل',
            icon: Icons.contact_phone_outlined,
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: const [
                _ContactRow(
                  icon: Icons.phone,
                  text: '01027229420',
                ),
                SizedBox(height: 8),
                _ContactRow(
                  icon: Icons.location_on_outlined,
                  text: '10th of Ramadan',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MemberInfoCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;

  const MemberInfoCard({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 13,
                color: AppColors.grey,
              ),
              const SizedBox(width: 6),
              Text(
                title,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          child,
        ],
      ),
    );
  }
}

class _ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _ContactRow({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 11,
          color: AppColors.grey,
        ),
        const SizedBox(width: 7),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.grey,
            fontSize: 8,
          ),
        ),
      ],
    );
  }
}

// ============================================================
// SECTION HEADER
// ============================================================

class SectionHeader extends StatelessWidget {
  final IconData icon;
  final String title;

  const SectionHeader({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.red,
          size: 14,
        ),

        const SizedBox(width: 6),

        Text(
          title,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

// ============================================================
// STATUS BADGE
// ============================================================

class StatusBadge extends StatelessWidget {
  final String text;
  final Color color;

  const StatusBadge({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(.10),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color.withOpacity(.35),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 7,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// ============================================================
// APP CARD
// ============================================================

class AppCard extends StatelessWidget {
  final Widget child;
  final double? height;

  const AppCard({
    super.key,
    required this.child,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(9),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: child,
    );
  }
}

// ============================================================
// DIALOG FIELD
// ============================================================

class _DialogField extends StatelessWidget {
  final String label;
  final String value;

  const _DialogField({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              color: AppColors.grey,
              fontSize: 10,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
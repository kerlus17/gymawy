import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';

void main() {
  runApp(const PowerGymApp());
}

class PowerGymApp extends StatelessWidget {
  const PowerGymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff050607),
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffff4848),
          brightness: Brightness.dark,
        ),
      ),
      home: const AddMemberPage(),
    );
  }
}

class AddMemberPage extends StatefulWidget {
  const AddMemberPage({super.key});

  @override
  State<AddMemberPage> createState() => _AddMemberPageState();
}

class _AddMemberPageState extends State<AddMemberPage> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final priceController = TextEditingController(text: '300');

  String gender = 'ذكر';
  String sportType = 'عادي (جيم)';
  String package = 'شهري';

  DateTime startDate = DateTime(2026, 5, 26);
  DateTime endDate = DateTime(2026, 6, 25);

  final red = const Color(0xffff4848);
  final cardColor = const Color(0xff151c23);
  final inputColor = const Color(0xff0d1319);
  final borderColor = const Color(0xff242d36);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 40,
              ),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 660,
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(
                    34,
                    28,
                    34,
                    32,
                  ),
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border(
                      top: BorderSide(
                        color: red,
                        width: 4,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.45),
                        blurRadius: 35,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      // =========================
                      // TITLE
                      // =========================

                      const Text(
                        'تسجيل مشترك جديد بالنظام',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 20),

                      Divider(
                        color: borderColor,
                        height: 1,
                      ),

                      const SizedBox(height: 22),

                      // =========================
                      // NAME
                      // =========================

                      const FieldLabel(
                        text: 'الاسم الكامل للمشترك',
                      ),

                      const SizedBox(height: 8),

                      AppTextField(
                        controller: nameController,
                        hint: 'Youssef Mansour',
                      ),

                      const SizedBox(height: 22),

                      // =========================
                      // PHONE
                      // =========================

                      const FieldLabel(
                        text: 'رقم الجوال',
                      ),

                      const SizedBox(height: 8),

                      AppTextField(
                        controller: phoneController,
                        hint: '+96650XXXXXXX',
                        keyboardType: TextInputType.phone,
                      ),

                      const SizedBox(height: 22),

                      // =========================
                      // GENDER
                      // =========================

                      const FieldLabel(
                        text: 'الجنس',
                      ),

                      const SizedBox(height: 8),

                      Row(
                        children: [
                          Expanded(
                            child: SelectButton(
                              title: 'ذكر',
                              selected: gender == 'ذكر',
                              onTap: () {
                                
                                setState(() {
                                  gender = 'ذكر';
                                });
                              },
                            ),
                          ),

                          const SizedBox(width: 14),

                          Expanded(
                            child: SelectButton(
                              title: 'أنثى',
                              selected: gender == 'أنثى',
                              onTap: () {
                                setState(() {
                                  gender = 'أنثى';
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 22),

                      // =========================
                      // SPORT TYPE
                      // =========================

                      const FieldLabel(
                        text: 'نوع الاشتراك الرياضي',
                      ),

                      const SizedBox(height: 8),

                      Row(
                        children: [
                          Expanded(
                            child: SelectButton(
                              title: 'ذكر',
                              actualTitle: 'عادي (جيم)',
                              selected: sportType == 'عادي (جيم)',
                              onTap: () {
                                setState(() {
                                  sportType = 'عادي (جيم)';
                                });
                              },
                            ),
                          ),

                          const SizedBox(width: 14),

                          Expanded(
                            child: SelectButton(
                              title: 'كارديو',
                              selected: sportType == 'كارديو',
                              onTap: () {
                                setState(() {
                                  sportType = 'كارديو';
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 22),

                      // =========================
                      // PACKAGE
                      // =========================

                      const FieldLabel(
                        text: 'باقة الاشتراك المدفوعة',
                      ),

                      const SizedBox(height: 8),

                      Row(
                        children: [
                          Expanded(
                            child: PackageButton(
                              title: 'شهري',
                              selected: package == 'شهري',
                              onTap: () {
                                setState(() {
                                  package = 'شهري';
                                });
                              },
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: PackageButton(
                              title: '3 أشهر',
                              selected: package == '3 أشهر',
                              onTap: () {
                                setState(() {
                                  package = '3 أشهر';
                                });
                              },
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: PackageButton(
                              title: '6 أشهر',
                              selected: package == '6 أشهر',
                              onTap: () {
                                setState(() {
                                  package = '6 أشهر';
                                });
                              },
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: PackageButton(
                              title: 'سنة',
                              selected: package == 'سنة',
                              onTap: () {
                                setState(() {
                                  package = 'سنة';
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 22),

                      // =========================
                      // PRICE
                      // =========================

                      const FieldLabel(
                        text: 'قيمة سعر الاشتراك (ج.م)',
                      ),

                      const SizedBox(height: 8),

                      AppTextField(
                        controller: priceController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                      ),

                      const SizedBox(height: 22),

                      // =========================
                      // DATES
                      // =========================

                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.stretch,
                              children: [
                                const FieldLabel(
                                  text: 'تاريخ البدء (START DATE)',
                                ),
                                const SizedBox(height: 8),
                                DateButton(
                                  date: startDate,
                                  onTap: () =>
                                      pickDate(true),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 14),

                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.stretch,
                              children: [
                                const FieldLabel(
                                  text: 'تاريخ الانتهاء (END DATE)',
                                ),
                                const SizedBox(height: 8),
                                DateButton(
                                  date: endDate,
                                  onTap: () =>
                                      pickDate(false),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 28),

                      // =========================
                      // ACTIONS
                      // =========================

                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: OutlinedButton.styleFrom(
                                minimumSize:
                                    const Size(0, 58),
                                backgroundColor:
                                    const Color(0xff17202a),
                                side: BorderSide(
                                  color:
                                      const Color(0xff202b36),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(12),
                                ),
                              ),
                              child: const Text(
                                'إلغاء  ×',
                                style: TextStyle(
                                  color: Color(0xffaab4be),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 14),

                          Expanded(
                            flex: 2,
                            child: ElevatedButton(
                              onPressed: saveMember,
                              style: ElevatedButton.styleFrom(
                                minimumSize:
                                    const Size(0, 58),
                                backgroundColor: red,
                                foregroundColor: Colors.white,
                                elevation: 8,
                                shadowColor:
                                    red.withOpacity(.35),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(12),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check,
                                    size: 20,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'حفظ ومزامنة البيانات',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight:
                                          FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // =========================
  // DATE PICKER
  // =========================

  Future<void> pickDate(bool isStart) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: isStart ? startDate : endDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2035),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.dark(
              primary: red,
              onPrimary: Colors.white,
              surface: cardColor,
              onSurface: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );

    if (selected == null) return;

    setState(() {
      if (isStart) {
        startDate = selected;
      } else {
        endDate = selected;
      }
    });
  }

  void saveMember() {
    print('Name: ${nameController.text}');
    print('Phone: ${phoneController.text}');
    print('Gender: $gender');
    print('Sport: $sportType');
    print('Package: $package');
    print('Price: ${priceController.text}');
  }
}

// ======================================================
// FIELD LABEL
// ======================================================

class FieldLabel extends StatelessWidget {
  final String text;

  const FieldLabel({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.right,
      style: const TextStyle(
        color: Color(0xffd8dde2),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// ======================================================
// TEXT FIELD
// ======================================================

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final TextInputType? keyboardType;
  final TextAlign textAlign;

  const AppTextField({
    super.key,
    required this.controller,
    this.hint,
    this.keyboardType,
    this.textAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      textAlign: textAlign,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color(0xffaeb5bc),
        ),
        filled: true,
        fillColor: const Color(0xff0d1319),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 17,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xff202a34),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xffff4848),
            width: 1.3,
          ),
        ),
      ),
    );
  }
}

// ======================================================
// SELECT BUTTON
// ======================================================

class SelectButton extends StatelessWidget {
  final String title;
  final String? actualTitle;
  final bool selected;
  final VoidCallback onTap;

  const SelectButton({
    super.key,
    required this.title,
    this.actualTitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 680),
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color:  ColorsMenege.back_color2,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected
                ? ColorsMenege.red2
                :  ColorsMenege.border,
            width: selected ? 1.4 : 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (selected) ...[
              Container(
                width: 11,
                height: 11,
                decoration: BoxDecoration(
                  color:ColorsMenege.red2 ,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: ColorsMenege.red2.withOpacity(.7),
                      blurRadius: 7,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
            ] else ...[
              Container(
                width: 11,
                height: 11,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color:  ColorsMenege.txt_gray,
                  ),
                ),
              ),
              const SizedBox(width: 8),
            ],

            Text(
               title,
              style: TextStyle(
                color: selected
                    ? ColorsMenege.white
                    : ColorsMenege.txt_gray,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================================================
// PACKAGE BUTTON
// ======================================================

class PackageButton extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const PackageButton({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final red = const Color(0xffff4848);

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected
              ? red.withOpacity(.10)
              : const Color(0xff0d1319),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected
                ? red
                : const Color(0xff202a34),
            width: selected ? 1.4 : 1,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: selected
                ? red
                : const Color(0xffaeb7c0),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

// ======================================================
// DATE BUTTON
// ======================================================

class DateButton extends StatelessWidget {
  final DateTime date;
  final VoidCallback onTap;

  const DateButton({
    super.key,
    required this.date,
    required this.onTap,
  });

  String formatDate(DateTime date) {
    return '${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff0d1319),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xff202a34),
          ),
        ),
        child: Text(
          formatDate(date),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
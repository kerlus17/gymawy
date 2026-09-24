import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

// استدعي الـ Models والـ Adapters بتاعتك هنا
import 'package:systeam_gym/data/core/hive_constant.dart';
import 'package:systeam_gym/data/models/attends/attends.dart';
import 'package:systeam_gym/data/models/attends/attends_adaptor.dart';
import 'package:systeam_gym/data/models/gym_member/gym_member.dart';
import 'package:systeam_gym/data/models/gym_member/member_adaptor.dart';
import 'package:systeam_gym/data/models/subscription/subscription.dart';
import 'package:systeam_gym/data/models/subscription/subscription_adaptor.dart';
import 'package:systeam_gym/sidebar.dart';

void main() async {
  // 1. ضمان تهيئة وربط محرك Flutter قبل تشغيل أي Async Code
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(GymMemberAdapter());
  Hive.registerAdapter(SubscriptionAdapter());
  Hive.registerAdapter(AttendanceAdapter());
  Hive.registerAdapter(GenderAdapter());

  await Hive.openBox<GymMember>(HiveConstants.memdersBox);
  await Hive.openBox<Subscription>(HiveConstants.subscriptionsBox);
  await Hive.openBox<Attendance>(HiveConstants.attendsBox);

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 900), // حسب تصميمك (Desktop/Tablet)
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          // showPerformanceOverlay: true,
          debugShowCheckedModeBanner: false,
          home: MainSidebar(),
        );
      },
    );
  }
}

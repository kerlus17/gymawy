import 'package:systeam_gym/data/models/attends/attends.dart';
import 'package:systeam_gym/data/models/gym_member/gym_member.dart';
import 'package:systeam_gym/data/models/subscription/subscription.dart';

class AttendanceWithMemberDetails {
  final Attendance attendance;
  final GymMember? member;
  final Subscription? subscription;

  const AttendanceWithMemberDetails({
    required this.attendance,
    required this.member,
    required this.subscription,
  });
}

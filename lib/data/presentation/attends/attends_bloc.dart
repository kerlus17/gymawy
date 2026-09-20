import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hive/hive.dart';
import 'package:systeam_gym/data/core/hive_constant.dart';
import 'package:systeam_gym/data/models/attendance_memberName_subscription/attendance_memberName_subscription.dart';
import 'package:systeam_gym/data/models/attends/attends.dart';
import 'package:systeam_gym/data/models/gym_member/gym_member.dart';
import 'package:systeam_gym/data/models/subscription/subscription.dart';
part 'attends_event.dart';
part 'attends_state.dart';
part 'attends_bloc.freezed.dart';

class AttendsBloc extends Bloc<AttendsEvent, AttendsState> {
  AttendsBloc() : super(const AttendsState.initial()) {
    on<GetAllAttedsEvent>(getAllAtteds);
    on<GetAttendsOfDayEvent>(getAttendsOfDay);
    on<GetAttendsOfMemberEvent>(getAttendsOfMember);
    on<AddAttendanceEvent>(addAttends);
  }

  final Box<Attendance> _box = Hive.box<Attendance>(HiveConstants.attendsBox);
  final Box<Subscription> _box2 = Hive.box<Subscription>(
    HiveConstants.subscriptionsBox,
  );
  final Box<GymMember> _box3 = Hive.box<GymMember>(HiveConstants.memdersBox);

  FutureOr<void> getAllAtteds(
    GetAllAttedsEvent event,
    Emitter<AttendsState> emit,
  ) async {
    try {
      emit(AttendsState.loading());
      final theList = _box.values.toList();
      emit(
        AttendsState.successGetAttendanceWithDetails(
          attendsWithDetails: _attachDetails(theList),
        ),
      );
    } catch (e) {
      emit(AttendsState.error(errMsg: e.toString()));
    }
  }
FutureOr<void> addAttends(
    AddAttendanceEvent event,
    Emitter<AttendsState> emit,
  ) async {
    try {
      emit(const AttendsState.loading());
      final member = _box3.values.cast<GymMember?>().firstWhere(
        (member) => member?.id == event.memberId,
        orElse: () => null,
      );

      if (member != null) {
        final lenBox1 = _box.values.toList().length.toString();

        final memberSubscriptions = _box2.values
            .where((subscription) => subscription.memberId == event.memberId)
            .toList();

        if (memberSubscriptions.isEmpty) {
          emit(const AttendsState.error(errMsg: "لا يوجد اشتراك مسجل لهذا العضو"));
          return;
        }

        final String subscriptionId = memberSubscriptions.last.id;

        final attendace = Attendance(
          id: lenBox1,
          memberId: event.memberId,
          subscriptionId: subscriptionId,
          checkInAt: DateTime.now(),
        );

        await _box.add(attendace);

        final now = DateTime.now();
        final todaysList = _box.values.where((attendance) {
          final checkIn = attendance.checkInAt;
          return checkIn.year == now.year &&
              checkIn.month == now.month &&
              checkIn.day == now.day;
        }).toList();

        emit(
          AttendsState.successGetAttendanceWithDetails(
            attendsWithDetails: _attachDetails(todaysList),
          ),
        );
      } else {
        emit(const AttendsState.error(errMsg: "there isnot this string id"));
      }
    } catch (e) {
      emit(AttendsState.error(errMsg: e.toString()));
    }
  }

  FutureOr<void> getAttendsOfDay(
    GetAttendsOfDayEvent event,
    Emitter<AttendsState> emit,
  ) async {
    try {
      emit(const AttendsState.loading());

      final targetDate = event.date;

      final theList = _box.values.where((attendance) {
        final checkIn = attendance.checkInAt;

        return checkIn.year == targetDate.year &&
            checkIn.month == targetDate.month &&
            checkIn.day == targetDate.day;
      }).toList();

      final listWithDetails = _attachDetails(theList);

      emit(
        AttendsState.successGetAttendanceWithDetails(
          attendsWithDetails: listWithDetails,
        ),
      );
    } catch (e) {
      emit(AttendsState.error(errMsg: e.toString()));
    }
  }

  FutureOr<void> getAttendsOfMember(
    GetAttendsOfMemberEvent event,
    Emitter<AttendsState> emit,
  ) async {
    try {
      emit(AttendsState.loading());
      final theList = _box.values
          .where((attendance) => attendance.memberId == event.memberId)
          .toList();
      emit(AttendsState.success(attends: theList));
    } catch (e) {
      emit(AttendsState.error(errMsg: e.toString()));
    }
  }

  List<AttendanceWithMemberDetails> _attachDetails(List<Attendance> list) {
    return list.map((att) {
      final member = _box3.values.cast<GymMember?>().firstWhere(
        (m) => m?.id == att.memberId,
        orElse: () => null,
      );

      final subscription = _box2.values.cast<Subscription?>().firstWhere(
        (s) => s?.id == att.subscriptionId,
        orElse: () => null,
      );

      return AttendanceWithMemberDetails(
        attendance: att,
        member: member,
        subscription: subscription,
      );
    }).toList();
  }
}




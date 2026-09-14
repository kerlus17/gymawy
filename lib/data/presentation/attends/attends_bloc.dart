import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hive/hive.dart';
import 'package:systeam_gym/data/core/hive_constant.dart';
import 'package:systeam_gym/data/models/attends/attends.dart';
part 'attends_event.dart';
part 'attends_state.dart';
part 'attends_bloc.freezed.dart';




class AttendsBloc extends Bloc<AttendsEvent, AttendsState> {
  AttendsBloc() : super(const AttendsState.initial()) {
    on<GetAllAttedsEvent>(getAllAtteds);
    on<GetAttendsOfDayEvent>(getAttendsOfDay);
    on<GetAttendsOfMemberEvent>(getAttendsOfMember);
  
  }

  final Box<Attendance> _box= Hive.box<Attendance>(HiveConstants.attendsBox);


  FutureOr<void> getAllAtteds(
    GetAllAttedsEvent event,
    Emitter<AttendsState> emit,
  ) async {
    try {
      emit(AttendsState.loading());
      final theList = _box.values.toList();
      emit(AttendsState.success(attends: theList));
    } catch (e) {
      emit(AttendsState.error(errMsg: e.toString()));
    }
  }

  FutureOr<void> getAttendsOfDay(
    GetAttendsOfDayEvent event,
    Emitter<AttendsState> emit,
  ) async {
    try {
      emit(AttendsState.loading());
      final theList = _box.values
          .where((attendance) => attendance.checkInAt == event.date)
          .toList();
      emit(AttendsState.success(attends: theList));
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

}

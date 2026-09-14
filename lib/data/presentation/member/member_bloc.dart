import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hive/hive.dart';
import 'package:systeam_gym/data/core/hive_constant.dart';
import 'package:systeam_gym/data/models/gym_member/gym_member.dart';

part 'member_event.dart';
part 'member_state.dart';
part 'member_bloc.freezed.dart';

class MemberBloc extends Bloc<MemberEvent, MemberState> {
  MemberBloc() : super(const MemberState.initial()) {
    on<AddNewMemberEvent>(addNewMember);
    on<GetAllMembersEvent>(getAllMembers);
  }

  final Box<GymMember> box = Hive.box<GymMember>(HiveConstants.memdersBox);

  FutureOr<void> addNewMember(
    AddNewMemberEvent event,
    Emitter<MemberState> emit,
  ) async {
    emit(MemberState.loading());

    try {
      await box.add(event.member);
      final updatedList = box.values.toList();
      print("add member${event.member.name}");
      emit(MemberState.success(members: updatedList));
    } catch (e) {
      emit(MemberState.error(errMsg: e.toString()));
    }
  }

  FutureOr<void> getAllMembers(
    GetAllMembersEvent event,
    Emitter<MemberState> emit,
  ) async {
    emit(MemberState.loading());

    try {
      final TheList = box.values.toList();
      emit(MemberState.success(members: TheList));
    } catch (e) {
      emit(MemberState.error(errMsg: e.toString()));
    }
  }
}

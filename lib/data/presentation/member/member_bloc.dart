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
    on<AddNewMemberEvent>(_addNewMember);
    on<GetAllMembersEvent>(_getAllMembers);
    on<GetOneDetailsMemberEvent>(_getOneMember);
  }

  final Box<GymMember> _box = Hive.box<GymMember>(HiveConstants.memdersBox);

   String memberName = "";

  FutureOr<void> _addNewMember(
    AddNewMemberEvent event,
    Emitter<MemberState> emit,
  ) async {
    emit(MemberState.loading());

    try {
      await _box.add(event.member);
      final updatedList = _box.values.toList();
      print("add member${event.member.name}");
      emit(MemberState.success(members: updatedList));
    } catch (e) {
      emit(MemberState.error(errMsg: e.toString()));
    }
  }

  FutureOr<void> _getAllMembers(
    GetAllMembersEvent event,
    Emitter<MemberState> emit,
  ) async {
    emit(MemberState.loading());

    try {
      final TheList = _box.values.toList();
      emit(MemberState.success(members: TheList));
    } catch (e) {
      emit(MemberState.error(errMsg: e.toString()));
    }
  }

  FutureOr<void> _getOneMember(
    GetOneDetailsMemberEvent event,
    Emitter<MemberState> emit,
  ) async {
    emit(MemberState.loading());

    try {
      final member = _box.values
          .where((members) => members.id == event.memberId)
          .toList();

      memberName = member[0].name;
      emit(MemberState.success(members: member));
    } catch (e) {
      emit(MemberState.error(errMsg: e.toString()));
    }
  }
}

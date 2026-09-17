part of 'member_bloc.dart';

@freezed
class MemberEvent with _$MemberEvent {
  const factory MemberEvent.started() = _Started;
  const factory MemberEvent.addNewMember({required GymMember member}) = AddNewMemberEvent;
  const factory MemberEvent.getAllMembers() = GetAllMembersEvent;


}

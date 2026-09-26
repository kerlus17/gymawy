part of 'attends_bloc.dart';

@freezed
class AttendsEvent with _$AttendsEvent {
  const factory AttendsEvent.started() = _Started;
  const factory AttendsEvent.getAllAtteds() = GetAllAttedsEvent;
  const factory AttendsEvent.getAttendsOfDay({required DateTime date}) =
      GetAttendsOfDayEvent;
  const factory AttendsEvent.getAttendsOfMember({required String memberId}) =
      GetAttendsOfMemberEvent;

  const factory AttendsEvent.addAttendance({required String memberId}) =
      AddAttendanceEvent;


      
}

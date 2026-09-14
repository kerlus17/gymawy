part of 'member_bloc.dart';

@freezed
class MemberState with _$MemberState {
  const factory MemberState.initial() = _Initial;
  const factory MemberState.loading() = LoadingState;

  const factory MemberState.success({required List<GymMember> members}) = SuccessState;

  const factory MemberState.error({required String errMsg}) = ErrorState;
}

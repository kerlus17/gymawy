part of 'attends_bloc.dart';

@freezed
class AttendsState with _$AttendsState {
  const factory AttendsState.initial() = _Initial;
  const factory AttendsState.loading() = LoadingState;

  const factory AttendsState.success({required List<Attendance> attends}) =
      SuccessState;

  const factory AttendsState.error({required String errMsg}) = ErrorState;
}

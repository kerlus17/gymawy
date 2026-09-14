part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.started() = _Started;
  const factory SubscriptionEvent.getAllSubscription() =
      GetAllSubscriptionEvent;
  const factory SubscriptionEvent.addSubscription({
    required Subscription subscription,
  }) = AddSubscriptionEvent;
  const factory SubscriptionEvent.getSubscriptionsOfMember({
    required String memberId,
  }) = GetSubscriptionsOfMemberEvent;

  const factory SubscriptionEvent.getAttendanceOfmemberAtLastSubscription({
    required String memberId,
  }) = GetAttendanceOfmemberAtLastSubscriptionEvent;
  
  const factory SubscriptionEvent.getlastSubscriptionOfMember({
    required String memberId,
  }) = getlastSubscriptionOfMemberEvent;
}

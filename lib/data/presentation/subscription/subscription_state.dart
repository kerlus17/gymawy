part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState.initial() = _Initial;
  const factory SubscriptionState.loading() = LoadingState;

  const factory SubscriptionState.success({
    required List<Subscription> subscriptions,
  }) = SuccessState;

  const factory SubscriptionState.error({required String errMsg}) = ErrorState;
}

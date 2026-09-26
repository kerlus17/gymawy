import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hive/hive.dart';
import 'package:systeam_gym/data/core/hive_constant.dart';
import 'package:systeam_gym/data/models/attends/attends.dart';
import 'package:systeam_gym/data/models/subscription/subscription.dart';
part 'subscription_event.dart';
part 'subscription_state.dart';
part 'subscription_bloc.freezed.dart';

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  SubscriptionBloc() : super(const SubscriptionState.initial()) {
    on<GetAllSubscriptionEvent>(getAllSubscriptions);
    on<AddSubscriptionEvent>(addsubscription);
    on<AddPaymentToSubEvent>(_addPayment);

    on<GetAttendanceOfmemberAtLastSubscriptionEvent>(
      getAttendanceOfmemberAtLastSubscription,
    );

    on<GetSubscriptionsOfMemberEvent>(getSubscriptionsOfMember);

    on<getlastSubscriptionOfMemberEvent>(getLastSubscriptionOfMember);
  }

  final Box<Subscription> _box = Hive.box<Subscription>(
    HiveConstants.subscriptionsBox,
  );


  bool? statusOfLastSub;
  DateTime? startDateLastSub;
  DateTime? endDateLastSub;
  SubscriptionPlan? lastSub;

  FutureOr<void> getAllSubscriptions(
    GetAllSubscriptionEvent event,
    Emitter<SubscriptionState> emit,
  ) async {
    try {
      emit(SubscriptionState.loading());
      final theList = await _box.values.toList();
      emit(SubscriptionState.success(subscriptions: theList));
    } catch (e) {
      emit(SubscriptionState.error(errMsg: e.toString()));
    }
  }
FutureOr<void> _addPayment(
  AddPaymentToSubEvent event,
  Emitter<SubscriptionState> emit,
) async {
  try {
    emit(SubscriptionState.loading());

    final int subIndex = _box.values.toList().indexWhere(
          (s) => s.id == event.SubId,
        );

    if (subIndex == -1) {
      emit(SubscriptionState.error(errMsg: 'الاشتراك غير موجود'));
      return;
    }

    final Subscription oldSub = _box.getAt(subIndex)!;

    final Subscription updatedSub = oldSub.addPayment(event.pay);

    await _box.putAt(subIndex, updatedSub);
  
    final updatedList = _box.values.toList();
    emit(SubscriptionState.success(subscriptions: updatedList));

  } catch (e) {
    emit(SubscriptionState.error(errMsg: e.toString()));
  }
}

  FutureOr<void> addsubscription(
    AddSubscriptionEvent event,
    Emitter<SubscriptionState> emit,
  ) async {
    try {
      emit(SubscriptionState.loading());
      await _box.add(
        Subscription(
          timesOdAtendance: event.subscription.timesOdAtendance,
          id: _box.length.toString(),
          memberId: event.subscription.memberId,
          planId: event.subscription.planId,
          createdAt: event.subscription.createdAt,
          startDate: event.subscription.startDate,
          endDate: event.subscription.endDate,
          priceInPounds: event.subscription.priceInPounds,
          priceHePaid: event.subscription.priceHePaid,
        ),
      );
      final memberSubscriptions =
          _box.values
              .where((s) => s.memberId == event.subscription.memberId)
              .toList()
            ..sort((a, b) => b.startDate.compareTo(a.startDate));

      emit(SubscriptionState.success(subscriptions: memberSubscriptions));
    } catch (e) {
      emit(SubscriptionState.error(errMsg: e.toString()));
    }
  }

  FutureOr<void> getSubscriptionsOfMember(
    GetSubscriptionsOfMemberEvent event,
    Emitter<SubscriptionState> emit,
  ) async {
    try {
      emit(SubscriptionState.loading());
      final memberSubscriptions = _box.values
          .where((subscription) => subscription.memberId == event.memberId)
          .toList();

      memberSubscriptions.sort((a, b) => b.startDate.compareTo(a.startDate));

      final lastSubscription = memberSubscriptions.first;
      if (lastSubscription.isActiveAt(DateTime.now())) {
        statusOfLastSub = true;
      } else {
        statusOfLastSub = false;
      }

      startDateLastSub = lastSubscription.startDate;
      endDateLastSub = lastSubscription.endDate;
      lastSub = lastSubscription.planId;
      emit(SubscriptionState.success(subscriptions: memberSubscriptions));
    } catch (e) {
      emit(SubscriptionState.error(errMsg: e.toString()));
    }
  }

  FutureOr<void> getAttendanceOfmemberAtLastSubscription(
    GetAttendanceOfmemberAtLastSubscriptionEvent event,
    Emitter<SubscriptionState> emit,
  ) async {
    try {
      emit(const SubscriptionState.loading());

      final memberSubscriptions = _box.values
          .where((subscription) => subscription.memberId == event.memberId)
          .toList();

      if (memberSubscriptions.isEmpty) {
        emit(const SubscriptionState.success(subscriptions: []));
        return;
      }

      memberSubscriptions.sort((a, b) {
        return b.startDate.compareTo(a.startDate);
      });

      final lastSubscription = memberSubscriptions.first;

      emit(SubscriptionState.success(subscriptions: [lastSubscription]));
    } catch (e) {
      emit(SubscriptionState.error(errMsg: e.toString()));
    }
  }

  FutureOr<void> getLastSubscriptionOfMember(
    getlastSubscriptionOfMemberEvent event,
    Emitter<SubscriptionState> emit,
  ) async {
    try {
      emit(const SubscriptionState.loading());

      final memberSubscriptions = _box.values
          .where((subscription) => subscription.memberId == event.memberId)
          .toList();

      if (memberSubscriptions.isEmpty) {
        emit(const SubscriptionState.success(subscriptions: []));
        return;
      }

      memberSubscriptions.sort((a, b) => b.startDate.compareTo(a.startDate));

      final lastSubscription = memberSubscriptions.first;
      if (lastSubscription.isActiveAt(DateTime.now())) {
        statusOfLastSub = true;
      } else {
        statusOfLastSub = false;
      }

      emit(SubscriptionState.success(subscriptions: [lastSubscription]));
    } catch (e) {
      emit(SubscriptionState.error(errMsg: e.toString()));
    }
  }
}

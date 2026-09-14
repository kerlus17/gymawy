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
    on<GetAttendanceOfmemberAtLastSubscriptionEvent>(
      getAttendanceOfmemberAtLastSubscription,
    );

     on<getlastSubscriptionOfMemberEvent>(getLastSubscriptionOfMember);
  }

  final Box<Subscription> _box = Hive.box<Subscription>(
    HiveConstants.subscriptionsBox,
  );

  final Box<Attendance> _box2 = Hive.box<Attendance>(
    HiveConstants.attendsBox,
  );

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

  FutureOr<void> addsubscription(
    AddSubscriptionEvent event,
    Emitter<SubscriptionState> emit,
  ) async {
    try {
      emit(SubscriptionState.loading());
      await _box.add(event.subscription);
      final theList = await _box.values.toList();
      emit(SubscriptionState.success(subscriptions: theList));
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

    // 2. التحقق لو مفيش أي اشتراكات
    if (memberSubscriptions.isEmpty) {
      emit(const SubscriptionState.success(subscriptions: []));
      return;
    }

    memberSubscriptions.sort((a, b) => b.startDate.compareTo(a.startDate));

    final lastSubscription = memberSubscriptions.first;

    emit(SubscriptionState.success(subscriptions: [lastSubscription]));
  } catch (e) {
    emit(SubscriptionState.error(errMsg: e.toString()));
  }
}
}

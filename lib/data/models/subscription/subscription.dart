class Subscription {
  final String id;
  final String memberId;
  final SubscriptionPlan planId;
  final DateTime createdAt;
  final DateTime startDate;
  final DateTime endDate;
  final int priceInPounds;
  final int priceHePaid;
  final List<int> payments;
  final int? sessionLimit;
  final DateTime? cancelledAt;
  final String? notes;
  final int timesOdAtendance;

  const Subscription({
    required this.id,
    required this.memberId,
    required this.planId,
    required this.createdAt,
    required this.startDate,
    required this.endDate,
    required this.priceInPounds,
    this.sessionLimit,
    this.cancelledAt,
    this.notes,
    required this.priceHePaid,
    this.payments = const <int>[],
    required this.timesOdAtendance,
  });

  Subscription copyWith({
    String? id,
    String? memberId,
    SubscriptionPlan? planId,
    DateTime? createdAt,
    DateTime? startDate,
    DateTime? endDate,
    int? priceInPounds,
    int? priceHePaid,
    List<int>? payments,
    int? sessionLimit,
    DateTime? cancelledAt,
    String? notes,
    int? timesOdAtendance,
  }) {
    return Subscription(
      id: id ?? this.id,
      memberId: memberId ?? this.memberId,
      planId: planId ?? this.planId,
      createdAt: createdAt ?? this.createdAt,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      priceInPounds: priceInPounds ?? this.priceInPounds,
      priceHePaid: priceHePaid ?? this.priceHePaid,
      payments: payments ?? this.payments,
      sessionLimit: sessionLimit ?? this.sessionLimit,
      cancelledAt: cancelledAt ?? this.cancelledAt,
      notes: notes ?? this.notes,
      timesOdAtendance: timesOdAtendance ?? this.timesOdAtendance,
    );
  }

  bool isActiveAt(DateTime date) {
    final hasStarted = !date.isBefore(startDate);
    final hasEnded = !date.isBefore(endDate);
    final isCancelled = cancelledAt != null && !date.isBefore(cancelledAt!);

    return hasStarted && !hasEnded && !isCancelled;
  }

  int DoneMoney() {
    int totalpaid = priceHePaid;

    for (final payment in payments) {
      totalpaid += payment;
    }

    if (totalpaid >= priceInPounds) {
      return 0;
    } else {
      return priceInPounds - totalpaid;
    }
  }

  Subscription addPayment(int cash) {
    return Subscription(
      id: id,
      memberId: memberId,
      planId: planId,
      createdAt: createdAt,
      startDate: startDate,
      endDate: endDate,
      priceInPounds: priceInPounds,
      priceHePaid: priceHePaid,
      sessionLimit: sessionLimit,
      cancelledAt: cancelledAt,
      notes: notes,
      payments: [...payments, cash],
      timesOdAtendance: timesOdAtendance,
    );
  }
}

enum SubscriptionPlan { oneMonths, threeMonths, sixMonths, yearly }

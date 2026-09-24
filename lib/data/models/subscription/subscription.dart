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
  });

  bool isActiveAt(DateTime date) {
    final hasStarted = !date.isBefore(startDate);
    final hasEnded = !date.isBefore(endDate);
    final isCancelled = cancelledAt != null && !date.isBefore(cancelledAt!);

    return hasStarted && !hasEnded && !isCancelled;
  }

  bool DoneMoney() {
    int totalpaid = priceHePaid;

    for (final payment in payments) {
      totalpaid += payment;
    }

    return totalpaid >= priceInPounds;
  }
}

enum SubscriptionPlan { oneMonths, threeMonths, sixMonths, yearly }

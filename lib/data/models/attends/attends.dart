class Attendance {
  final String id;
  final String memberId;
  final String subscriptionId;
  final DateTime checkInAt;
  final String? notes;

  const Attendance({
    required this.id,
    required this.memberId,
    required this.subscriptionId,
    required this.checkInAt,
    this.notes,
  });
}

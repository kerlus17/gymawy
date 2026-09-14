import 'package:hive/hive.dart';
import 'package:systeam_gym/data/models/subscription/subscription.dart';

class SubscriptionAdapter extends TypeAdapter<Subscription> {
  @override
  final int typeId = 5;

  @override
  Subscription read(BinaryReader reader) {
    final id = reader.readString();
    final memberId = reader.readString();

    // قراءة الـ Enum باستخدام الـ index المخزّن
    final planIdIndex = reader.readInt();
    final planId = SubscriptionPlan.values[planIdIndex];

    final createdAt = DateTime.parse(reader.readString());
    final startDate = DateTime.parse(reader.readString());
    final endDate = DateTime.parse(reader.readString());

    final priceInPounds = reader.readInt();

    final priceHePaid = reader.readInt();
    final payments = (reader.readList()).cast<int>();

    final sessionLimit = reader.read() as int?;

    final cancelledAtStr = reader.read() as String?;
    final cancelledAt = cancelledAtStr != null
        ? DateTime.parse(cancelledAtStr)
        : null;

    final notes = reader.read() as String?;

    return Subscription(
      id: id,
      memberId: memberId,
      planId: planId,
      createdAt: createdAt,
      startDate: startDate,
      endDate: endDate,
      priceInPounds: priceInPounds,
      priceHePaid: priceHePaid,
      payments: payments,
      sessionLimit: sessionLimit,
      cancelledAt: cancelledAt,
      notes: notes,
    );
  }

  @override
  void write(BinaryWriter writer, Subscription obj) {
    writer.writeString(obj.id);
    writer.writeString(obj.memberId);

    // كتابة الـ Enum عن طريق الـ index
    writer.writeInt(obj.planId.index);

    writer.writeString(obj.createdAt.toIso8601String());
    writer.writeString(obj.startDate.toIso8601String());
    writer.writeString(obj.endDate.toIso8601String());

    writer.writeInt(obj.priceInPounds);

    writer.writeInt(obj.priceHePaid);
    writer.writeList(obj.payments);

    writer.write(obj.sessionLimit);
    writer.write(obj.cancelledAt?.toIso8601String());
    writer.write(obj.notes);
  }
}

import 'package:hive/hive.dart';
import 'package:systeam_gym/data/models/attends/attends.dart';

class AttendanceAdapter extends TypeAdapter<Attendance> {
  @override
  final int typeId = 6; 

  @override
  Attendance read(BinaryReader reader) {
    final id = reader.readString();
    final memberId = reader.readString();
    final subscriptionId = reader.readString();
    final checkInAt = DateTime.parse(reader.readString());
    final notes = reader.read() as String?;

    return Attendance(
      id: id,
      memberId: memberId,
      subscriptionId: subscriptionId,
      checkInAt: checkInAt,
      notes: notes,
    );
  }

  @override
  void write(BinaryWriter writer, Attendance obj) {
    writer.writeString(obj.id);
    writer.writeString(obj.memberId);
    writer.writeString(obj.subscriptionId);
    writer.writeString(obj.checkInAt.toIso8601String());
    writer.write(obj.notes);
  }
}

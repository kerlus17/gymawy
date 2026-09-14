
import 'package:hive/hive.dart';
import 'package:systeam_gym/data/models/gym_member/gym_member.dart';

class GenderAdapter extends TypeAdapter<Gender> {
  @override
  final int typeId = 1;

  @override
  Gender read(BinaryReader reader) {
    final index = reader.readInt();
    return Gender.values[index];
  }

  @override
  void write(BinaryWriter writer, Gender obj) {
    writer.writeInt(obj.index);
  }
}

class GymMemberAdapter extends TypeAdapter<GymMember> {
  @override
  final int typeId = 2; // يمكنك تغيير الـ typeId حسب شجرة الـ Adapters عندك

  @override
  GymMember read(BinaryReader reader) {
    final id = reader.readString();
    final name = reader.readString();
    final phone = reader.readString();

    // قراءة الـ DateTime بتنسيق Iso8601 String
    final createdAt = DateTime.parse(reader.readString());

    // قراءة الـ Nullable Types بأمان عبر الـ Casting
    final birthDateStr = reader.read() as String?;
    final birthDate = birthDateStr != null
        ? DateTime.parse(birthDateStr)
        : null;

    final gender = reader.read() as Gender?;
    final photoPath = reader.read() as String?;
    final emergencyPhone = reader.read() as String?;
    final notes = reader.read() as String?;

    return GymMember(
      id: id,
      name: name,
      phone: phone,
      createdAt: createdAt,
      birthDate: birthDate,
      gender: gender,
      photoPath: photoPath,
      emergencyPhone: emergencyPhone,
      notes: notes,
    );
  }

  @override
  void write(BinaryWriter writer, GymMember obj) {
    writer.writeString(obj.id);
    writer.writeString(obj.name);
    writer.writeString(obj.phone);
    writer.writeString(obj.createdAt.toIso8601String());

    // كتابة القيم الـ Nullable بنفس ترتيب القراءة
    writer.write(obj.birthDate?.toIso8601String());
    writer.write(obj.gender);
    writer.write(obj.photoPath);
    writer.write(obj.emergencyPhone);
    writer.write(obj.notes);
  }
}

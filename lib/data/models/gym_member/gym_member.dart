class GymMember {
  final String id;
  final String name;
  final String phone;
  final DateTime createdAt;
  final DateTime? birthDate;
  final Gender? gender;
  final String? photoPath;
  final String? emergencyPhone;
  final String? notes;

  const GymMember({
    required this.id,
    required this.name,
    required this.phone,
    required this.createdAt,
    this.birthDate,
    this.gender,
    this.photoPath,
    this.emergencyPhone,
    this.notes,
  });
}


enum Gender { male, female }

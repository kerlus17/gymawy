enum GenderType {
  male,
  female,
}

enum SportType {
  regularGym,
  cardio,
}

enum PackageType {
  oneMonth,
  threeMonths,
  sixMonths,
}

class AddUserState {
  final GenderType gender;
  final SportType sportType;
  final PackageType package;

  final DateTime startDate;
  final DateTime endDate;

  const AddUserState({
    this.gender = GenderType.male,
    this.sportType = SportType.regularGym,
    this.package = PackageType.oneMonth,
    required this.startDate,
    required this.endDate,
  });

  AddUserState copyWith({
    GenderType? gender,
    SportType? sportType,
    PackageType? package,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return AddUserState(
      gender: gender ?? this.gender,
      sportType: sportType ?? this.sportType,
      package: package ?? this.package,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
    );
  }
}
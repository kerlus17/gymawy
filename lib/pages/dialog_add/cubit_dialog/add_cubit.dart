import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systeam_gym/pages/dialog_add/cubit_dialog/add_state.dart';
 

class AddUserCubit extends Cubit<AddUserState> {
  AddUserCubit()
      : super(
          AddUserState(
            startDate: DateTime.now(),
            endDate: DateTime.now().add(
              const Duration(days: 30),
            ),
          ),
        );

  void changeGender(GenderType gender) {
    emit(
      state.copyWith(
        gender: gender,
      ),
    );
  }

  void changeSportType(SportType sportType) {
    emit(
      state.copyWith(
        sportType: sportType,
      ),
    );
  }

  void changePackage(PackageType package) {
    emit(
      state.copyWith(
        package: package,
      ),
    );
  }

  void changeStartDate(DateTime date) {
    emit(
      state.copyWith(
        startDate: date,
      ),
    );
  }

  void changeEndDate(DateTime date) {
    emit(
      state.copyWith(
        endDate: date,
      ),
    );
  }
}
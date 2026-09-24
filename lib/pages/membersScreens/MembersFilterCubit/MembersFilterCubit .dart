import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systeam_gym/pages/membersScreens/MembersFilterCubit/MembersFilterState%20.dart';

class MembersFilterCubit extends Cubit<MembersFilterState> {
  MembersFilterCubit()
      : super(const MembersFilterState());

  void changeFilter(MemberFilter filter) {
    emit(
      state.copyWith(
        filter: filter,
      ),
    );
  }

  void search(String query) {
    emit(
      state.copyWith(
        searchQuery: query,
      ),
    );
  }
}
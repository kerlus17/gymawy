enum MemberFilter {
  all,
  active,
  notActive,
}

class MembersFilterState {
  final MemberFilter filter;
  final String searchQuery;

  const MembersFilterState({
    this.filter = MemberFilter.all,
    this.searchQuery = '',
  });

  MembersFilterState copyWith({
    MemberFilter? filter,
    String? searchQuery,
  }) {
    return MembersFilterState(
      filter: filter ?? this.filter,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}
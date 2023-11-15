part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<Downloads> idleMovie,
    required List<SearchReponseData> searchReult,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() {
    return const SearchState(
        idleMovie: [], searchReult: [], isLoading: true, isError: false);
  }
}

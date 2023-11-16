part of 'hotand_new_bloc.dart';

@freezed
class HotandNewState with _$HotandNewState {
  const factory HotandNewState({
    required List<HotandNewModelData> commingSoonList,
    required List<HotandNewModelData> everyoneWatchingList,
    required bool isLoading,
    required bool isError,
  }) = _HotandNewState;

  factory HotandNewState.initial() {
    return const HotandNewState(
        commingSoonList: [],
        isLoading: true,
        isError: false,
        everyoneWatchingList: []);
  }
}

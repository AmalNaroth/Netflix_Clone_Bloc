part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required List<HotandNewModelData> realsedInthePastList,
    required List<HotandNewModelData> trendingNowList,
    required List<HotandNewModelData> topTenList,
    required List<HotandNewModelData> tenseDramaList,
    required List<HotandNewModelData> sountIndianCinemaList,
    required bool isLoading,
    required bool isError,
  }) = _HomeScreenState;

  factory HomeScreenState.initializeda() {
    return const HomeScreenState(
        realsedInthePastList: [],
        trendingNowList: [],
        topTenList: [],
        tenseDramaList: [],
        sountIndianCinemaList: [],
        isLoading: true,
        isError: false);
  }
}

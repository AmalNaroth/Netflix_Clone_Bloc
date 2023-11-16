import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/result.dart';
import 'package:netflix_clone/domain/new&hot/services/hot&new_services.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

@injectable
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc(HotandNewServices _homeScreenServices)
      : super(HomeScreenState.initializeda()) {
    on<_Initialized>((event, emit) async {
      final movieListResponse = await _homeScreenServices.getComingSoonData();
      final tvShowListReponse =
          await _homeScreenServices.getEveryOneWatchingData();

      movieListResponse.fold((l) {
        emit(state.copyWith(isError: true, isLoading: false));
      }, (r) {
        List<HotandNewModelData> realsedInthePastList = List.from(r.results);
        realsedInthePastList.shuffle();
        List<HotandNewModelData> topTenList = List.from(r.results);
        topTenList.shuffle();

        List<HotandNewModelData> sountIndianCinemaList = List.from(r.results);
        sountIndianCinemaList.shuffle();

        emit(state.copyWith(
            realsedInthePastList: realsedInthePastList,
            topTenList: topTenList,
            sountIndianCinemaList: sountIndianCinemaList,
            isError: false,
            isLoading: false));
      });

      tvShowListReponse.fold((l) {
        emit(
          state.copyWith(isError: true, isLoading: false),
        );
      }, (r) {
        List<HotandNewModelData> trendingNowList = List.from(r.results);
        trendingNowList.shuffle();
        List<HotandNewModelData> tenseDramaList = List.from(r.results);
        tenseDramaList.shuffle();
        emit(state.copyWith(
            trendingNowList: trendingNowList,
            tenseDramaList: tenseDramaList,
            isError: false,
            isLoading: false));
      });
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/everyone_watching_models.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/result.dart';
import 'package:netflix_clone/domain/new&hot/services/hot&new_services.dart';

part 'hotand_new_event.dart';
part 'hotand_new_state.dart';
part 'hotand_new_bloc.freezed.dart';

@injectable
class HotandNewBloc extends Bloc<HotandNewEvent, HotandNewState> {
  HotandNewBloc(
    final HotandNewServices _hotandNewServices,
  ) : super(HotandNewState.initial()) {
    on<_Initialized>(
      (event, emit) async {
        if (state.commingSoonList.isNotEmpty &&
            state.everyoneWatchingList.isNotEmpty) {
          emit(
            state.copyWith(isLoading: false),
          );
          return;
        }
        final comingResponse = await _hotandNewServices.getComingSoonData();
        final everyOneResponse =
            await _hotandNewServices.getEveryOneWatchingData();
        comingResponse.fold((MainFailure failure) {
          emit(state.copyWith(isError: true));
        }, (HotandNewModel successs) {
          emit(
            state.copyWith(
                commingSoonList: successs.results,
                isLoading: false,
                isError: false),
          );
        });

        everyOneResponse.fold((MainFailure failure) {
          emit(state.copyWith(isError: true));
        }, (HotandNewModel success) {
          emit(
            state.copyWith(
                everyoneWatchingList: success.results,
                isLoading: false,
                isError: false),
          );
        });
      },
    );
  }
}

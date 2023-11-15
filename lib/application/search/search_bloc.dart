import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads_models.dart';
import 'package:netflix_clone/domain/search/models/search_response/search_response.dart';
import 'package:netflix_clone/domain/search/search_services/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IdownloadsRepo _idownloadServices;
  final SearchServices _searchServices;
  SearchBloc(
    this._idownloadServices,
    this._searchServices,
  ) : super(SearchState.initial()) {
    on<_SearchInitilize>(
      (event, emit) async {
        if (state.idleMovie.isNotEmpty) {
          emit(
            state.copyWith(searchReult: [], isLoading: false),
          );
          return;
        } else {
          emit(
            state.copyWith(searchReult: [], isLoading: true),
          );
        }
        final _result = await _idownloadServices.getDownloadItems();
        _result.fold(
          (failure) {
            return emit(
              state.copyWith(
                isError: true,
                isLoading: false,
              ),
            );
          },
          (success) {
            return emit(
              state.copyWith(
                idleMovie: success,
                isLoading: false,
                isError: false,
              ),
            );
          },
        );
      },
    );

    on<_SearchMovie>(
      (event, emit) async {
        final _result = await _searchServices.getSearchItems(
            moveNameQuery: event.movieQuery);

        emit(state.copyWith(isLoading: true, isError: false, searchReult: []));
        final _state = _result.fold(
          (falure) {
            return state
                .copyWith(searchReult: [], isError: true, isLoading: false);
          },
          (sucess) {
            return state.copyWith(
              searchReult: sucess.results,
              isError: false,
              isLoading: false,
            );
          },
        );
        emit(_state);
      },
    );
  }
}

import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads_models.dart';
part 'download_event.dart';
part 'download_state.dart';
part 'download_bloc.freezed.dart';

@injectable
class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  final IdownloadsRepo _downloadsRepo;
  DownloadBloc(this._downloadsRepo) : super(DownloadState.initial()) {
    on<_GetDownloadImage>(
      (event, emit) async {
        emit(
          state.copyWith(
              isLoading: true, downloadsFailureOrSuccessOption: none()),
        );

        final Either<MainFailure, List<Downloads>> downloadsOption =
            await _downloadsRepo.getDownloadItems();
        emit(
          downloadsOption.fold(
            (failure) => state.copyWith(
              isLoading: true,
              downloadsFailureOrSuccessOption: some(
                left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsFailureOrSuccessOption: some(
                right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}

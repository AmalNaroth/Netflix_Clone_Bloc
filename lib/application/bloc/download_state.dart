part of 'download_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState(
      {required bool isLoading,
      required List<Downloads> downloads,
      required Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption}) = _DownloadState;

  factory DownloadState.initial() {
    return const DownloadState(
        isLoading: true,
        downloadsFailureOrSuccessOption: None(),
        downloads: []);
  }
}

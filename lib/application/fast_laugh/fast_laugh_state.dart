part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  factory FastLaughState({
    required bool isloading,
    required bool isError,
    required List<Downloads> videoList,
  }) = _FastLaughState;

  factory FastLaughState.initial() {
    return FastLaughState(
        isloading: true, isError: false, videoList: []);
  }
}

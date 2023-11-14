import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_models.freezed.dart';
part 'downloads_models.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads(
          {@JsonKey(name: "poster_path") 
          required String posterPath,
          @JsonKey(name: "original_title")
          required String movieTitile,
          @JsonKey(name: "backdrop_path")
          required String backdropPath}) =
      _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}

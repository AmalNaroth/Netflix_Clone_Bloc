import 'package:json_annotation/json_annotation.dart';
part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  @JsonKey(name: "results")
  List<SearchReponseData> results;

  SearchResponse({
    this.results = const [],
  });

  factory SearchResponse.fromJson(Map<String, dynamic> json) {
    return _$SearchResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}

@JsonSerializable()
class SearchReponseData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  int? id;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  SearchReponseData({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory SearchReponseData.fromJson(Map<String, dynamic> json) {
    return _$SearchReponseDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchReponseDataToJson(this);
}

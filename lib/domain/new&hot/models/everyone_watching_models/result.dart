import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/core/api/api_doc.dart';

part 'result.g.dart';

@JsonSerializable()
class HotandNewModelData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'first_air_date')
  String? firstAirDate;
  int? id;
  String? name;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_name')
  String? originalName;
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: "release_date")
  String? releaseDate;
  @JsonKey(name: "original_title")
  String? originalTitle;

  HotandNewModelData({
    this.backdropPath,
    this.firstAirDate,
    this.id,
    this.name,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.originalTitle,
  });

  // Create a getter for the formatted date
  String get formattedMonth {
      DateTime date = DateTime.parse(releaseDate!);
      String monthInLetters = DateFormat('MMM').format(date);
      return "${monthInLetters}";
  }

  String get formattedDay {
      DateTime date = DateTime.parse(releaseDate!);
      String day = DateFormat('d').format(date);
      return day;
  }

  String get formattedDayLetter{
      DateTime date = DateTime.parse(releaseDate!);
      String dayInLetters = DateFormat('EEEE').format(date);
      return dayInLetters;
  }

  // Getters for image URLs
  String get getPosterPath => "$imageBaseUrl$posterPath";
  String get getBackDropPath => "$imageBaseUrl$backdropPath";

  factory HotandNewModelData.fromJson(Map<String, dynamic> json) {
    return _$HotandNewModelDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotandNewModelDataToJson(this);
}

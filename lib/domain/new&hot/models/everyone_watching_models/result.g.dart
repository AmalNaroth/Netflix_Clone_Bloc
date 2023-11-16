// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotandNewModelData _$HotandNewModelDataFromJson(Map<String, dynamic> json) =>
    HotandNewModelData(
      backdropPath: json['backdrop_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalName: json['original_name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      originalTitle: json['original_title'] as String?,
    );

Map<String, dynamic> _$HotandNewModelDataToJson(HotandNewModelData instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'first_air_date': instance.firstAirDate,
      'id': instance.id,
      'name': instance.name,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'original_title': instance.originalTitle,
    };

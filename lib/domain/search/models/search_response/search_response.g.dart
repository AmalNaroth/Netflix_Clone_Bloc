// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    SearchResponse(
      results: (json['results'] as List<dynamic>?)
              ?.map(
                  (e) => SearchReponseData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

SearchReponseData _$SearchReponseDataFromJson(Map<String, dynamic> json) =>
    SearchReponseData(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$SearchReponseDataToJson(SearchReponseData instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };

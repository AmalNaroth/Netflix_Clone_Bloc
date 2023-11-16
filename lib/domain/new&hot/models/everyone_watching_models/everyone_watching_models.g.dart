// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everyone_watching_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotandNewModel _$HotandNewModelFromJson(Map<String, dynamic> json) =>
    HotandNewModel(
      results: (json['results'] as List<dynamic>)
          .map((e) => HotandNewModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HotandNewModelToJson(HotandNewModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

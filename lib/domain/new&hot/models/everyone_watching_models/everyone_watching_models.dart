import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'everyone_watching_models.g.dart';

@JsonSerializable()
class HotandNewModel {
	List<HotandNewModelData> results;

	HotandNewModel({required this.results});

	factory HotandNewModel.fromJson(Map<String, dynamic> json) {
		return _$HotandNewModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$HotandNewModelToJson(this);
}

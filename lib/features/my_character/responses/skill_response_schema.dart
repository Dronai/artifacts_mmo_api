import 'package:artifacts_mmo_api/features/my_character/models/gathering/skill_data_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'skill_response_schema.g.dart';

@JsonSerializable()
class SkillResponseSchema {
  SkillResponseSchema({required this.data});

  SkillDataSchema data;

  factory SkillResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$SkillResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$SkillResponseSchemaToJson(this);
}
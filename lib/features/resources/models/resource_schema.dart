import 'package:artifacts_mmo_api/common/enum/resource_skill.dart';
import 'package:artifacts_mmo_api/common/models/drop_rate_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resource_schema.g.dart';

@JsonSerializable()
class ResourceSchema {
  ResourceSchema({
    required this.name,
    required this.code,
    required this.level,
    required this.skill,
    required this.drops,
  });

  String name;

  String code;

  int level;

  ResourceSkill skill;

  List<DropRateSchema> drops;

  factory ResourceSchema.fromJson(Map<String, dynamic> json) =>
      _$ResourceSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$ResourceSchemaToJson(this);
}
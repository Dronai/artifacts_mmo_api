import 'package:artifacts_mmo_api/features/monsters/models/monster_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resource_response_schema.g.dart';

@JsonSerializable()
class ResourceResponseSchema {
  ResourceResponseSchema({required this.data});

  MonsterSchema data;

  factory ResourceResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$ResourceResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$ResourceResponseSchemaToJson(this);
}

import 'package:artifacts_mmo_api/features/monsters/models/monster_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'monster_response_schema.g.dart';

@JsonSerializable()
class MonsterResponseSchema {
  MonsterResponseSchema({required this.data});

  MonsterSchema data;

  factory MonsterResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$MonsterResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MonsterResponseSchemaToJson(this);
}

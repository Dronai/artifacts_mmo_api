import 'package:json_annotation/json_annotation.dart';

import '../fight/drop_schema.dart';

part 'skill_info_schema.g.dart';

@JsonSerializable()
class SkillInfoSchema {
  SkillInfoSchema({
    required this.xp,
    this.items = const [],
  });

  int xp;

  List<DropSchema> items;

  factory SkillInfoSchema.fromJson(Map<String, dynamic> json) =>
      _$SkillInfoSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$SkillInfoSchemaToJson(this);
}
import 'package:artifacts_mmo_api/features/my_character/models/gathering/skill_info_schema.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../common/models/cooldown_schema.dart';
import '../../../characters/models/character_schema.dart';

part 'skill_data_schema.g.dart';

@JsonSerializable()
class SkillDataSchema {
  SkillDataSchema({
    required this.cooldown,
    required this.details,
    required this.character,
  });

  CooldownSchema cooldown;

  SkillInfoSchema details;

  CharacterSchema character;

  factory SkillDataSchema.fromJson(Map<String, dynamic> json) =>
      _$SkillDataSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$SkillDataSchemaToJson(this);
}
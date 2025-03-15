// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_data_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkillDataSchema _$SkillDataSchemaFromJson(
  Map<String, dynamic> json,
) => SkillDataSchema(
  cooldown: CooldownSchema.fromJson(json['cooldown'] as Map<String, dynamic>),
  details: SkillInfoSchema.fromJson(json['details'] as Map<String, dynamic>),
  character: CharacterSchema.fromJson(
    json['character'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$SkillDataSchemaToJson(SkillDataSchema instance) =>
    <String, dynamic>{
      'cooldown': instance.cooldown,
      'details': instance.details,
      'character': instance.character,
    };

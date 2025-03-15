// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_info_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkillInfoSchema _$SkillInfoSchemaFromJson(Map<String, dynamic> json) =>
    SkillInfoSchema(
      xp: (json['xp'] as num).toInt(),
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => DropSchema.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SkillInfoSchemaToJson(SkillInfoSchema instance) =>
    <String, dynamic>{'xp': instance.xp, 'items': instance.items};

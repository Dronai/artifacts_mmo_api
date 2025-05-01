// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceSchema _$ResourceSchemaFromJson(Map<String, dynamic> json) =>
    ResourceSchema(
      name: json['name'] as String,
      code: json['code'] as String,
      level: (json['level'] as num).toInt(),
      skill: $enumDecode(_$ResourceSkillEnumMap, json['skill']),
      drops:
          (json['drops'] as List<dynamic>)
              .map((e) => DropRateSchema.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ResourceSchemaToJson(ResourceSchema instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'level': instance.level,
      'skill': _$ResourceSkillEnumMap[instance.skill]!,
      'drops': instance.drops,
    };

const _$ResourceSkillEnumMap = {
  ResourceSkill.mining: 'mining',
  ResourceSkill.woodcutting: 'woodcutting',
  ResourceSkill.fishing: 'fishing',
  ResourceSkill.alchemy: 'alchemy',
};

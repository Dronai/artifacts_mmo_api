// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'craft_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CraftSchema _$CraftSchemaFromJson(Map<String, dynamic> json) => CraftSchema(
  skill: $enumDecode(_$CraftSkillEnumMap, json['skill']),
  level: (json['level'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => SimpleItemSchema.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$CraftSchemaToJson(CraftSchema instance) =>
    <String, dynamic>{
      'skill': _$CraftSkillEnumMap[instance.skill]!,
      'level': instance.level,
      'items': instance.items,
      'quantity': instance.quantity,
    };

const _$CraftSkillEnumMap = {
  CraftSkill.weaponcrafting: 'weaponcrafting',
  CraftSkill.gearcrafting: 'gearcrafting',
  CraftSkill.jewelrycrafting: 'jewelrycrafting',
  CraftSkill.cooking: 'cooking',
  CraftSkill.woodcutting: 'woodcutting',
  CraftSkill.mining: 'mining',
  CraftSkill.alchemy: 'alchemy',
};

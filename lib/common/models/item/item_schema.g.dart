// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemSchema _$ItemSchemaFromJson(Map<String, dynamic> json) => ItemSchema(
  name: json['name'] as String,
  code: json['code'] as String,
  level: (json['level'] as num).toInt(),
  type: $enumDecode(_$ItemSlotEnumMap, json['type']),
  subtype: json['subtype'] as String,
  description: json['description'] as String,
  effects:
      (json['effects'] as List<dynamic>?)
          ?.map((e) => SimpleEffectSchema.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  craft:
      json['craft'] == null
          ? null
          : CraftSchema.fromJson(json['craft'] as Map<String, dynamic>),
  tradeable: json['tradeable'] as bool,
);

Map<String, dynamic> _$ItemSchemaToJson(ItemSchema instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'level': instance.level,
      'type': _$ItemSlotEnumMap[instance.type]!,
      'subtype': instance.subtype,
      'description': instance.description,
      'effects': instance.effects,
      'craft': instance.craft,
      'tradeable': instance.tradeable,
    };

const _$ItemSlotEnumMap = {
  ItemSlot.weapon: 'weapon',
  ItemSlot.shield: 'shield',
  ItemSlot.helmet: 'helmet',
  ItemSlot.body_armor: 'body_armor',
  ItemSlot.leg_armor: 'leg_armor',
  ItemSlot.boots: 'boots',
  ItemSlot.ring1: 'ring1',
  ItemSlot.ring2: 'ring2',
  ItemSlot.amulet: 'amulet',
  ItemSlot.artifact1: 'artifact1',
  ItemSlot.artifact2: 'artifact2',
  ItemSlot.artifact3: 'artifact3',
  ItemSlot.utility1: 'utility1',
  ItemSlot.utility2: 'utility2',
  ItemSlot.bag: 'bag',
  ItemSlot.rune: 'rune',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equip_request_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquipRequestSchema _$EquipRequestSchemaFromJson(Map<String, dynamic> json) =>
    EquipRequestSchema(
      cooldown: CooldownSchema.fromJson(
        json['cooldown'] as Map<String, dynamic>,
      ),
      slot: $enumDecode(_$ItemSlotEnumMap, json['slot']),
      item: ItemSchema.fromJson(json['item'] as Map<String, dynamic>),
      character: CharacterSchema.fromJson(
        json['character'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$EquipRequestSchemaToJson(EquipRequestSchema instance) =>
    <String, dynamic>{
      'cooldown': instance.cooldown,
      'slot': _$ItemSlotEnumMap[instance.slot]!,
      'item': instance.item,
      'character': instance.character,
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

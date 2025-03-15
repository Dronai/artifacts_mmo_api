// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equip_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquipSchema _$EquipSchemaFromJson(Map<String, dynamic> json) => EquipSchema(
  code: json['code'] as String,
  slot: $enumDecode(_$ItemSlotEnumMap, json['slot']),
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$EquipSchemaToJson(EquipSchema instance) =>
    <String, dynamic>{
      'code': instance.code,
      'slot': _$ItemSlotEnumMap[instance.slot]!,
      'quantity': instance.quantity,
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

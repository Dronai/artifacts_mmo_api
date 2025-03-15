// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemSchema _$ItemSchemaFromJson(Map<String, dynamic> json) => ItemSchema(
  name: json['name'] as String,
  code: json['code'] as String,
  level: (json['level'] as num).toInt(),
  type: json['type'] as String,
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
      'type': instance.type,
      'subtype': instance.subtype,
      'description': instance.description,
      'effects': instance.effects,
      'craft': instance.craft,
      'tradeable': instance.tradeable,
    };

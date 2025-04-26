// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'effect_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EffectSchema _$EffectSchemaFromJson(Map<String, dynamic> json) => EffectSchema(
  name: json['name'] as String,
  code: json['code'] as String,
  description: json['description'] as String,
  type: json['type'] as String,
  subtype: json['subtype'] as String,
);

Map<String, dynamic> _$EffectSchemaToJson(EffectSchema instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'type': instance.type,
      'subtype': instance.subtype,
    };

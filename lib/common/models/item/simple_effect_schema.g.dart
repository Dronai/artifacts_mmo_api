// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_effect_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleEffectSchema _$SimpleEffectSchemaFromJson(Map<String, dynamic> json) =>
    SimpleEffectSchema(
      code: json['code'] as String,
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$SimpleEffectSchemaToJson(SimpleEffectSchema instance) =>
    <String, dynamic>{'code': instance.code, 'value': instance.value};

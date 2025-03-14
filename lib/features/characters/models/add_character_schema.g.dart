// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_character_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCharacterSchema _$AddCharacterSchemaFromJson(Map<String, dynamic> json) =>
    AddCharacterSchema(
      name: json['name'] as String,
      skin: $enumDecode(_$SkinEnumMap, json['skin']),
    );

Map<String, dynamic> _$AddCharacterSchemaToJson(AddCharacterSchema instance) =>
    <String, dynamic>{
      'name': instance.name,
      'skin': _$SkinEnumMap[instance.skin]!,
    };

const _$SkinEnumMap = {
  Skin.men1: 'men1',
  Skin.men2: 'men2',
  Skin.men3: 'men3',
  Skin.women1: 'women1',
  Skin.women2: 'women2',
  Skin.women3: 'women3',
};

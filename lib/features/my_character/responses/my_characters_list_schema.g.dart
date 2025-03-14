// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_characters_list_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyCharactersListSchema _$MyCharactersListSchemaFromJson(
  Map<String, dynamic> json,
) => MyCharactersListSchema(
  data:
      (json['data'] as List<dynamic>)
          .map((e) => CharacterSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$MyCharactersListSchemaToJson(
  MyCharactersListSchema instance,
) => <String, dynamic>{'data': instance.data};

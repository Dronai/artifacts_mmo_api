// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_characters_response_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountCharactersResponseSchema _$AccountCharactersResponseSchemaFromJson(
  Map<String, dynamic> json,
) => AccountCharactersResponseSchema(
  data:
      (json['data'] as List<dynamic>)
          .map((e) => CharacterSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$AccountCharactersResponseSchemaToJson(
  AccountCharactersResponseSchema instance,
) => <String, dynamic>{'data': instance.data};

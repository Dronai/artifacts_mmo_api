import 'package:artifacts_mmo_api/features/characters/models/character_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account_characters_response_schema.g.dart';

@JsonSerializable()
class AccountCharactersResponseSchema {
  AccountCharactersResponseSchema({required this.data});

  List<CharacterSchema> data;

  factory AccountCharactersResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$AccountCharactersResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AccountCharactersResponseSchemaToJson(this);
}

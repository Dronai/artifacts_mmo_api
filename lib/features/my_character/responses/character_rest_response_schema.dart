import 'package:artifacts_mmo_api/features/my_character/models/fight/character_rest_data_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_rest_response_schema.g.dart';

@JsonSerializable()
class CharacterRestResponseSchema {
  CharacterRestResponseSchema({required this.data});

  CharacterRestDataSchema data;

  factory CharacterRestResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$CharacterRestResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterRestResponseSchemaToJson(this);
}

import 'package:artifacts_mmo_api/features/my_character/models/fight/character_fight_data_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_fight_response_schema.g.dart';

@JsonSerializable()
class CharacterFightResponseSchema {
  CharacterFightResponseSchema({required this.data});

  CharacterFightDataSchema data;

  factory CharacterFightResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$CharacterFightResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterFightResponseSchemaToJson(this);
}

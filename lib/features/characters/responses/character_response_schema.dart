import 'package:json_annotation/json_annotation.dart';

import '../models/character_schema.dart';

part 'character_response_schema.g.dart';

@JsonSerializable()
class CharacterResponseSchema {
  CharacterResponseSchema({
    required this.data,
  });

  CharacterSchema data;

  factory CharacterResponseSchema.fromJson(Map<String, dynamic> json) => _$CharacterResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterResponseSchemaToJson(this);
}
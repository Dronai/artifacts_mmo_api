import 'package:artifacts_mmo_api/features/my_character/models/character_movement_data_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_movement_response_schema.g.dart';

@JsonSerializable()
class CharacterMovementResponseSchema {
  CharacterMovementResponseSchema({required this.data});

  CharacterMovementDataSchema data;

  factory CharacterMovementResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$CharacterMovementResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterMovementResponseSchemaToJson(this);
}
import 'package:json_annotation/json_annotation.dart';

import '../../../common/models/cooldown_schema.dart';
import '../../../common/models/map_schema.dart';
import '../../characters/models/character_schema.dart';

part 'character_movement_data_schema.g.dart';

@JsonSerializable()
class CharacterMovementDataSchema {
  CharacterMovementDataSchema({
    required this.cooldown,
    required this.destination,
    required this.character,
  });

  CooldownSchema cooldown;

  MapSchema destination;

  CharacterSchema character;

  factory CharacterMovementDataSchema.fromJson(Map<String, dynamic> json) =>
      _$CharacterMovementDataSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterMovementDataSchemaToJson(this);
}
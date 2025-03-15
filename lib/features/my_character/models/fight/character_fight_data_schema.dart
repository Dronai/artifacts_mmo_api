import 'package:json_annotation/json_annotation.dart';

import '../../../../common/models/cooldown_schema.dart';
import '../../../characters/models/character_schema.dart';
import 'fight_schema.dart';

part 'character_fight_data_schema.g.dart';

@JsonSerializable()
class CharacterFightDataSchema {
  CharacterFightDataSchema({
  required this.cooldown,
  required this.fight,
  required this.character,
  });

  CooldownSchema cooldown;

  FightSchema fight;

  CharacterSchema character;

  factory CharacterFightDataSchema.fromJson(Map<String, dynamic> json) =>
      _$CharacterFightDataSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterFightDataSchemaToJson(this);
}
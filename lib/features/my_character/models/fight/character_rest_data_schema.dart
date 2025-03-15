import 'package:json_annotation/json_annotation.dart';

import '../../../../common/models/cooldown_schema.dart';
import '../../../characters/models/character_schema.dart';

part 'character_rest_data_schema.g.dart';

@JsonSerializable()
class CharacterRestDataSchema {
  CharacterRestDataSchema({
    required this.cooldown,
    required this.hpRestored,
    required this.character,
  });

  CooldownSchema cooldown;

  @JsonKey(name: "hp_restored")
  int hpRestored;

  CharacterSchema character;

  factory CharacterRestDataSchema.fromJson(Map<String, dynamic> json) =>
      _$CharacterRestDataSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterRestDataSchemaToJson(this);
}

import 'package:artifacts_mmo_api/features/my_character/models/gathering/recycling_items_schema.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../common/models/cooldown_schema.dart';
import '../../../characters/models/character_schema.dart';

part 'recycling_data_schema.g.dart';

@JsonSerializable()
class RecyclingDataSchema {
  RecyclingDataSchema({
    required this.cooldown,
    required this.details,
    required this.character,
  });

  CooldownSchema cooldown;

  RecyclingItemsSchema details;

  CharacterSchema character;

  factory RecyclingDataSchema.fromJson(Map<String, dynamic> json) =>
      _$RecyclingDataSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$RecyclingDataSchemaToJson(this);
}
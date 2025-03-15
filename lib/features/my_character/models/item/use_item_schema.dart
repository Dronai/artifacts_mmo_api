import 'package:json_annotation/json_annotation.dart';

import '../../../../common/models/cooldown_schema.dart';
import '../../../../common/models/item/item_schema.dart';
import '../../../characters/models/character_schema.dart';

part 'use_item_schema.g.dart';

@JsonSerializable()
class UseItemSchema {
  UseItemSchema({
    required this.cooldown,
    required this.item,
    required this.character,
  });

  CooldownSchema cooldown;

  ItemSchema item;

  CharacterSchema character;

  factory UseItemSchema.fromJson(Map<String, dynamic> json) =>
      _$UseItemSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$UseItemSchemaToJson(this);
}
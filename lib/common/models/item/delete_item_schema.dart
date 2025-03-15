import 'package:artifacts_mmo_api/common/models/item/simple_item_schema.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../features/characters/models/character_schema.dart';
import '../cooldown_schema.dart';

part 'delete_item_schema.g.dart';

@JsonSerializable()
class DeleteItemSchema {
  DeleteItemSchema({
    required this.cooldown,
    required this.item,
    required this.character,
  });

  CooldownSchema cooldown;

  SimpleItemSchema item;

  CharacterSchema character;

  factory DeleteItemSchema.fromJson(Map<String, dynamic> json) =>
      _$DeleteItemSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteItemSchemaToJson(this);
}
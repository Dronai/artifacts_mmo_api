import 'package:json_annotation/json_annotation.dart';

import '../../../../common/models/cooldown_schema.dart';
import '../../../../common/models/item/item_schema.dart';
import '../../../characters/models/character_schema.dart';
import '../../../../common/enum/item_slot.dart';

part 'equip_request_schema.g.dart';

@JsonSerializable()
class EquipRequestSchema {
  EquipRequestSchema({
    required this.cooldown,
    required this.slot,
    required this.item,
    required this.character,
  });

  CooldownSchema cooldown;

  ItemSlot slot;

  ItemSchema item;

  CharacterSchema character;

  factory EquipRequestSchema.fromJson(Map<String, dynamic> json) =>
      _$EquipRequestSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$EquipRequestSchemaToJson(this);
}
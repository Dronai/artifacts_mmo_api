import 'package:artifacts_mmo_api/common/models/item/simple_item_schema.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enum/craft_skill.dart';

part 'craft_schema.g.dart';

@JsonSerializable()
class CraftSchema {
  CraftSchema({
    required this.skill,
    required this.level,
    this.items = const [],
    required this.quantity,
  });

  CraftSkill skill;

  int level;

  List<SimpleItemSchema> items;

  int quantity;

  factory CraftSchema.fromJson(Map<String, dynamic> json) =>
      _$CraftSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$CraftSchemaToJson(this);
}
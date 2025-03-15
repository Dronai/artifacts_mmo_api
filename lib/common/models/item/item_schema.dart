import 'package:artifacts_mmo_api/common/models/item/simple_effect_schema.dart';
import 'package:json_annotation/json_annotation.dart';

import 'craft_schema.dart';

part 'item_schema.g.dart';

@JsonSerializable()
class ItemSchema {
  ItemSchema({
    required this.name,
    required this.code,
    required this.level,
    required this.type,
    required this.subtype,
    required this.description,
    this.effects = const [],
    this.craft,
    required this.tradeable,
  });

  String name;

  String code;

  int level;

  String type;

  String subtype;

  String description;

  List<SimpleEffectSchema> effects;

  CraftSchema? craft;

  bool tradeable;

  factory ItemSchema.fromJson(Map<String, dynamic> json) =>
      _$ItemSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$ItemSchemaToJson(this);
}
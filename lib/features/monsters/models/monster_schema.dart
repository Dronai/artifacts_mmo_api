import 'package:artifacts_mmo_api/common/models/item/simple_effect_schema.dart';
import 'package:artifacts_mmo_api/common/models/drop_rate_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'monster_schema.g.dart';

@JsonSerializable()
class MonsterSchema {
  MonsterSchema({
    required this.name,
    required this.code,
    required this.level,
    required this.hp,
    required this.attackFire,
    required this.attackEarth,
    required this.attackWater,
    required this.attackAir,
    required this.resFire,
    required this.resEarth,
    required this.resWater,
    required this.resAir,
    required this.criticalStrike,
    required this.effects,
    required this.drops,
    required this.minGold,
    required this.maxGold,
  });

  String name;

  String code;

  int level;

  int hp;

  @JsonKey(name: "attack_fire")
  int attackFire;

  @JsonKey(name: "attack_earth")
  int attackEarth;

  @JsonKey(name: "attack_water")
  int attackWater;

  @JsonKey(name: "attack_air")
  int attackAir;

  @JsonKey(name: "res_fire")
  int resFire;

  @JsonKey(name: "res_earth")
  int resEarth;

  @JsonKey(name: "res_water")
  int resWater;

  @JsonKey(name: "res_air")
  int resAir;

  @JsonKey(name: "critical_strike")
  int criticalStrike;

  List<SimpleEffectSchema> effects;

  @JsonKey(name: "min_gold")
  int minGold;

  @JsonKey(name: "max_gold")
  int maxGold;

  List<DropRateSchema> drops;

  factory MonsterSchema.fromJson(Map<String, dynamic> json) =>
      _$MonsterSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MonsterSchemaToJson(this);
}
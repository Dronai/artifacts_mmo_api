import 'package:json_annotation/json_annotation.dart';

import '../../enum/FightResult.dart';
import 'blocked_hits_schema.dart';
import 'drop_schema.dart';

part 'fight_schema.g.dart';

@JsonSerializable()
class FightSchema {
  FightSchema({
    required this.xp,
    required this.gold,
    this.drops = const [],
    required this.turns,
    required this.monsterBlockedHits,
    required this.playerBlockedHits,
    this.logs = const [],
    required this.result,
  });

  int xp;

  int gold;

  List<DropSchema> drops;

  int turns;

  @JsonKey(name: "monster_blocked_hits")
  BlockedHitsSchema monsterBlockedHits;

  @JsonKey(name: "player_blocked_hits")
  BlockedHitsSchema playerBlockedHits;

  List<String> logs;

  FightResult result;

  factory FightSchema.fromJson(Map<String, dynamic> json) =>
      _$FightSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$FightSchemaToJson(this);
}
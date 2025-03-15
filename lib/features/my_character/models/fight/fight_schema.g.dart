// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fight_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FightSchema _$FightSchemaFromJson(Map<String, dynamic> json) => FightSchema(
  xp: (json['xp'] as num).toInt(),
  gold: (json['gold'] as num).toInt(),
  drops:
      (json['drops'] as List<dynamic>?)
          ?.map((e) => DropSchema.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  turns: (json['turns'] as num).toInt(),
  monsterBlockedHits: BlockedHitsSchema.fromJson(
    json['monster_blocked_hits'] as Map<String, dynamic>,
  ),
  playerBlockedHits: BlockedHitsSchema.fromJson(
    json['player_blocked_hits'] as Map<String, dynamic>,
  ),
  logs:
      (json['logs'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  result: $enumDecode(_$FightResultEnumMap, json['result']),
);

Map<String, dynamic> _$FightSchemaToJson(FightSchema instance) =>
    <String, dynamic>{
      'xp': instance.xp,
      'gold': instance.gold,
      'drops': instance.drops,
      'turns': instance.turns,
      'monster_blocked_hits': instance.monsterBlockedHits,
      'player_blocked_hits': instance.playerBlockedHits,
      'logs': instance.logs,
      'result': _$FightResultEnumMap[instance.result]!,
    };

const _$FightResultEnumMap = {FightResult.win: 'win', FightResult.loss: 'loss'};

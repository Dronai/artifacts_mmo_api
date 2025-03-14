// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cooldown_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CooldownSchema _$CooldownSchemaFromJson(Map<String, dynamic> json) =>
    CooldownSchema(
      totalSeconds: (json['total_seconds'] as num).toInt(),
      remainingSeconds: (json['remaining_seconds'] as num).toInt(),
      startedAt: DateTime.parse(json['started_at'] as String),
      expiration: DateTime.parse(json['expiration'] as String),
      reason: $enumDecode(_$ActionTypeEnumMap, json['reason']),
    );

Map<String, dynamic> _$CooldownSchemaToJson(CooldownSchema instance) =>
    <String, dynamic>{
      'total_seconds': instance.totalSeconds,
      'remaining_seconds': instance.remainingSeconds,
      'started_at': instance.startedAt.toIso8601String(),
      'expiration': instance.expiration.toIso8601String(),
      'reason': _$ActionTypeEnumMap[instance.reason]!,
    };

const _$ActionTypeEnumMap = {
  ActionType.movement: 'movement',
  ActionType.fight: 'fight',
  ActionType.crafting: 'crafting',
  ActionType.gathering: 'gathering',
  ActionType.buy_ge: 'buy_ge',
  ActionType.sell_ge: 'sell_ge',
  ActionType.buy_npc: 'buy_npc',
  ActionType.sell_npc: 'sell_npc',
  ActionType.cancel_ge: 'cancel_ge',
  ActionType.delete_item: 'delete_item',
  ActionType.deposit: 'deposit',
  ActionType.withdraw: 'withdraw',
  ActionType.deposit_gold: 'deposit_gold',
  ActionType.withdraw_gold: 'withdraw_gold',
  ActionType.equip: 'equip',
  ActionType.unequip: 'unequip',
  ActionType.task: 'task',
  ActionType.christmas_exchange: 'christmas_exchange',
  ActionType.recycling: 'recycling',
  ActionType.rest: 'rest',
  ActionType.use: 'use',
  ActionType.buy_bank_expansion: 'buy_bank_expansion',
};

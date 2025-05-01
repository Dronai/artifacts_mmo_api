// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MonsterSchema _$MonsterSchemaFromJson(Map<String, dynamic> json) =>
    MonsterSchema(
      name: json['name'] as String,
      code: json['code'] as String,
      level: (json['level'] as num).toInt(),
      hp: (json['hp'] as num).toInt(),
      attackFire: (json['attack_fire'] as num).toInt(),
      attackEarth: (json['attack_earth'] as num).toInt(),
      attackWater: (json['attack_water'] as num).toInt(),
      attackAir: (json['attack_air'] as num).toInt(),
      resFire: (json['res_fire'] as num).toInt(),
      resEarth: (json['res_earth'] as num).toInt(),
      resWater: (json['res_water'] as num).toInt(),
      resAir: (json['res_air'] as num).toInt(),
      criticalStrike: (json['critical_strike'] as num).toInt(),
      effects:
          (json['effects'] as List<dynamic>)
              .map(
                (e) => SimpleEffectSchema.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      drops:
          (json['drops'] as List<dynamic>)
              .map((e) => DropRateSchema.fromJson(e as Map<String, dynamic>))
              .toList(),
      minGold: (json['min_gold'] as num).toInt(),
      maxGold: (json['max_gold'] as num).toInt(),
    );

Map<String, dynamic> _$MonsterSchemaToJson(MonsterSchema instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'level': instance.level,
      'hp': instance.hp,
      'attack_fire': instance.attackFire,
      'attack_earth': instance.attackEarth,
      'attack_water': instance.attackWater,
      'attack_air': instance.attackAir,
      'res_fire': instance.resFire,
      'res_earth': instance.resEarth,
      'res_water': instance.resWater,
      'res_air': instance.resAir,
      'critical_strike': instance.criticalStrike,
      'effects': instance.effects,
      'min_gold': instance.minGold,
      'max_gold': instance.maxGold,
      'drops': instance.drops,
    };

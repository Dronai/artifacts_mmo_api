// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocked_hits_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockedHitsSchema _$BlockedHitsSchemaFromJson(Map<String, dynamic> json) =>
    BlockedHitsSchema(
      fire: (json['fire'] as num).toInt(),
      earth: (json['earth'] as num).toInt(),
      water: (json['water'] as num).toInt(),
      air: (json['air'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$BlockedHitsSchemaToJson(BlockedHitsSchema instance) =>
    <String, dynamic>{
      'fire': instance.fire,
      'earth': instance.earth,
      'water': instance.water,
      'air': instance.air,
      'total': instance.total,
    };

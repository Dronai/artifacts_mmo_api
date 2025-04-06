// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_content_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapContentSchema _$MapContentSchemaFromJson(Map<String, dynamic> json) =>
    MapContentSchema(
      type: $enumDecode(_$MapTypeEnumMap, json['type']),
      code: json['code'] as String,
    );

Map<String, dynamic> _$MapContentSchemaToJson(MapContentSchema instance) =>
    <String, dynamic>{
      'type': _$MapTypeEnumMap[instance.type]!,
      'code': instance.code,
    };

const _$MapTypeEnumMap = {
  MapType.monster: 'monster',
  MapType.resource: 'resource',
  MapType.workshop: 'workshop',
  MapType.bank: 'bank',
  MapType.grand_exchange: 'grand_exchange',
  MapType.tasks_master: 'tasks_master',
  MapType.npc: 'npc',
};

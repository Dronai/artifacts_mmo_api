// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapSchema _$MapSchemaFromJson(Map<String, dynamic> json) => MapSchema(
  name: json['name'] as String,
  skin: json['skin'] as String,
  x: (json['x'] as num).toInt(),
  y: (json['y'] as num).toInt(),
  content: MapContentSchema.fromJson(json['content'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MapSchemaToJson(MapSchema instance) => <String, dynamic>{
  'name': instance.name,
  'skin': instance.skin,
  'x': instance.x,
  'y': instance.y,
  'content': instance.content,
};

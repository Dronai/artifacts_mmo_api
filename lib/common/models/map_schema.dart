import 'package:json_annotation/json_annotation.dart';

import 'map_content_schema.dart';

part 'map_schema.g.dart';

@JsonSerializable()
class MapSchema {
  MapSchema({
    required this.name,
    required this.skin,
    required this.x,
    required this.y,
    required this.content,
  });

  /// Name of the map.
  String name;

  String skin;

  int x;

  int y;

  MapContentSchema? content;

  factory MapSchema.fromJson(Map<String, dynamic> json) =>
      _$MapSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MapSchemaToJson(this);
}
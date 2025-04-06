import 'package:artifacts_mmo_api/common/models/map/map_content_schema.dart';
import 'package:json_annotation/json_annotation.dart';

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

  String name;

  String skin;

  int x;

  int y;

  MapContentSchema content;

  factory MapSchema.fromJson(Map<String, dynamic> json) =>
      _$MapSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MapSchemaToJson(this);
}

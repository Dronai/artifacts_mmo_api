import 'package:json_annotation/json_annotation.dart';

part 'map_content_schema.g.dart';

@JsonSerializable()
class MapContentSchema {
  MapContentSchema({
    required this.type,
    required this.code,
  });

  /// Type of the content.
  String type;

  /// Code of the content.
  String code;

  factory MapContentSchema.fromJson(Map<String, dynamic> json) =>
      _$MapContentSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MapContentSchemaToJson(this);
}
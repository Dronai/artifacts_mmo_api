import 'package:artifacts_mmo_api/common/models/map/map_schema.dart';
import 'package:json_annotation/json_annotation.dart';


part 'map_response_schema.g.dart';

@JsonSerializable()
class MapResponseSchema {
  MapResponseSchema({required this.data});

  MapSchema data;

  factory MapResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$MapResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MapResponseSchemaToJson(this);
}

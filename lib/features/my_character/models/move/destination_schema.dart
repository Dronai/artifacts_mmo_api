import 'package:json_annotation/json_annotation.dart';

part 'destination_schema.g.dart';

@JsonSerializable()
class DestinationSchema {
  DestinationSchema({
    required this.x,
    required this.y,
  });

  /// The x coordinate of the destination.
  int x;

  /// The y coordinate of the destination.
  int y;

  factory DestinationSchema.fromJson(Map<String, dynamic> json) =>
      _$DestinationSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DestinationSchemaToJson(this);
}
import 'package:json_annotation/json_annotation.dart';

part 'blocked_hits_schema.g.dart';

@JsonSerializable()
class BlockedHitsSchema {
  BlockedHitsSchema({
    required this.fire,
    required this.earth,
    required this.water,
    required this.air,
    required this.total,
  });

  int fire;

  int earth;

  int water;

  int air;

  int total;

  factory BlockedHitsSchema.fromJson(Map<String, dynamic> json) =>
      _$BlockedHitsSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$BlockedHitsSchemaToJson(this);
}
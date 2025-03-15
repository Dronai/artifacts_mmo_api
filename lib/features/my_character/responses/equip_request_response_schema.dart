import 'package:json_annotation/json_annotation.dart';

import '../models/item/equip_request_schema.dart';

part 'equip_request_response_schema.g.dart';

@JsonSerializable()
class EquipRequestResponseSchema {
  EquipRequestResponseSchema({
    required this.data,
  });

  EquipRequestSchema data;

  factory EquipRequestResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$EquipRequestResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$EquipRequestResponseSchemaToJson(this);
}
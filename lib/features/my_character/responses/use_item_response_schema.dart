import 'package:artifacts_mmo_api/features/my_character/models/item/use_item_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'use_item_response_schema.g.dart';

@JsonSerializable()
class UseItemResponseSchema {
  UseItemResponseSchema({required this.data});

  UseItemSchema data;

  factory UseItemResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$UseItemResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$UseItemResponseSchemaToJson(this);
}

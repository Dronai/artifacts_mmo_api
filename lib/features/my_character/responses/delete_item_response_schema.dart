import 'package:artifacts_mmo_api/common/models/item/delete_item_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delete_item_response_schema.g.dart';

@JsonSerializable()
class DeleteItemResponseSchema {
  DeleteItemResponseSchema({required this.data});

  DeleteItemSchema data;

  factory DeleteItemResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$DeleteItemResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteItemResponseSchemaToJson(this);
}
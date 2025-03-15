import 'package:json_annotation/json_annotation.dart';

part 'simple_item_schema.g.dart';

@JsonSerializable()
class SimpleItemSchema {
  SimpleItemSchema({required this.code, required this.quantity});

  String code;

  int quantity;

  factory SimpleItemSchema.fromJson(Map<String, dynamic> json) =>
      _$SimpleItemSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleItemSchemaToJson(this);
}

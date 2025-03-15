import 'package:json_annotation/json_annotation.dart';

part 'drop_schema.g.dart';

@JsonSerializable()
class DropSchema {
  DropSchema({
    required this.code,
    required this.quantity,
  });

  String code;

  int quantity;

  factory DropSchema.fromJson(Map<String, dynamic> json) =>
      _$DropSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DropSchemaToJson(this);
}
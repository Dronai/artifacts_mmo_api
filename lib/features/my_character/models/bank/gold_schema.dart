import 'package:json_annotation/json_annotation.dart';

part 'gold_schema.g.dart';

@JsonSerializable()
class GoldSchema {
  GoldSchema({
    required this.quantity,
  });

  int quantity;

  factory GoldSchema.fromJson(Map<String, dynamic> json) =>
      _$GoldSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$GoldSchemaToJson(this);
}
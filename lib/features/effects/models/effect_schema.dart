import 'package:json_annotation/json_annotation.dart';

part 'effect_schema.g.dart';

@JsonSerializable()
class EffectSchema {
  String name;

  String code;

  String description;

  String type;

  String subtype;

  EffectSchema({
    required this.name,
    required this.code,
    required this.description,
    required this.type,
    required this.subtype,
  });

  factory EffectSchema.fromJson(Map<String, dynamic> json) =>
      _$EffectSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$EffectSchemaToJson(this);
}

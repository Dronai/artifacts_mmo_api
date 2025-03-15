import 'package:json_annotation/json_annotation.dart';

part 'simple_effect_schema.g.dart';

@JsonSerializable()
class SimpleEffectSchema {
  SimpleEffectSchema({required this.code, required this.value});

  String code;

  int value;

  factory SimpleEffectSchema.fromJson(Map<String, dynamic> json) =>
      _$SimpleEffectSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleEffectSchemaToJson(this);
}

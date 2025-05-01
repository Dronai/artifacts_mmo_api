import 'package:json_annotation/json_annotation.dart';

part 'drop_rate_schema.g.dart';

@JsonSerializable()
class DropRateSchema {
  DropRateSchema({
    required this.code,
    required this.rate,
    required this.minQuantity,
    required this.maxQuantity,
  });

  String code;

  int rate;

  @JsonKey(name: "min_quantity")
  int minQuantity;

  @JsonKey(name: "max_quantity")
  int maxQuantity;

  factory DropRateSchema.fromJson(Map<String, dynamic> json) =>
      _$DropRateSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DropRateSchemaToJson(this);
}
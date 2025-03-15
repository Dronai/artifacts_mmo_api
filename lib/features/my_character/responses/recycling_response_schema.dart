import 'package:artifacts_mmo_api/features/my_character/models/gathering/recycling_data_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recycling_response_schema.g.dart';

@JsonSerializable()
class RecyclingResponseSchema {
  RecyclingResponseSchema({required this.data});

  RecyclingDataSchema data;

  factory RecyclingResponseSchema.fromJson(Map<String, dynamic> json) =>
      _$RecyclingResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$RecyclingResponseSchemaToJson(this);
}
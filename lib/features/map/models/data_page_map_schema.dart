import 'package:artifacts_mmo_api/common/models/map/map_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_page_map_schema.g.dart';

@JsonSerializable()
class DataPageMapSchema {
  DataPageMapSchema({
    required this.data,
    required this.total,
    required this.page,
    required this.size,
    this.pages = 0,
  });

  List<MapSchema> data;

  int total;

  int page;

  int size;

  int pages;

  factory DataPageMapSchema.fromJson(Map<String, dynamic> json) =>
      _$DataPageMapSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DataPageMapSchemaToJson(this);
}

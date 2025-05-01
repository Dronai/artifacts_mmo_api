import 'package:artifacts_mmo_api/features/resources/models/resource_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_page_resource_schema.g.dart';

@JsonSerializable()
class DataPageResourceSchema {
  DataPageResourceSchema({
    required this.data,
    required this.total,
    required this.page,
    required this.size,
    this.pages = 0,
  });

  List<ResourceSchema> data;

  int total;

  int page;

  int size;

  int pages;

  factory DataPageResourceSchema.fromJson(Map<String, dynamic> json) =>
      _$DataPageResourceSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DataPageResourceSchemaToJson(this);
}

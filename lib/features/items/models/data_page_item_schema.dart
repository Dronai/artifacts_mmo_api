import 'package:artifacts_mmo_api/common/models/item/item_schema.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_page_item_schema.g.dart';

@JsonSerializable()
class DataPageItemSchema {
  DataPageItemSchema({
    required this.data,
    required this.total,
    required this.page,
    required this.size,
    this.pages = 0,
  });

  List<ItemSchema> data;

  int total;

  int page;

  int size;

  int pages;

  factory DataPageItemSchema.fromJson(Map<String, dynamic> json) =>
      _$DataPageItemSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DataPageItemSchemaToJson(this);
}

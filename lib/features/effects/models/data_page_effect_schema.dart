import 'package:json_annotation/json_annotation.dart';

import 'effect_schema.dart';

part 'data_page_effect_schema.g.dart';

@JsonSerializable()
class DataPageEffectSchema {
  DataPageEffectSchema({
    required this.data,
    required this.total,
    required this.page,
    required this.size,
    this.pages = 0,
  });

  List<EffectSchema> data;

  int total;

  int page;

  int size;

  int pages;

  factory DataPageEffectSchema.fromJson(Map<String, dynamic> json) =>
      _$DataPageEffectSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$DataPageEffectSchemaToJson(this);
}

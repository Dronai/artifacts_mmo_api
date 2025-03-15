import 'package:json_annotation/json_annotation.dart';

import '../fight/drop_schema.dart';

part 'recycling_items_schema.g.dart';

@JsonSerializable()
class RecyclingItemsSchema {
  RecyclingItemsSchema({
    this.items = const [],
  });

  List<DropSchema> items;

  factory RecyclingItemsSchema.fromJson(Map<String, dynamic> json) =>
      _$RecyclingItemsSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$RecyclingItemsSchemaToJson(this);
}